/*
* Copyright (2009 as c) Adam Newgas http://www.boristhebrave.com
*
* This software is provided 'as-is', without any express or implied
* warranty.  In no event will the authors be held liable for any damages
* arising from the use of this software.
* Permission is granted to anyone to use this software for any purpose,
* including commercial applications, and to alter it and redistribute it
* freely, subject to the following restrictions: dynamic 1. The origin of this software must not be misrepresented; you must not
* claim that you wrote the original software. If you use this software
* in a product, an acknowledgment in the product documentation would be
* appreciated but is not required.
* 2. Altered source versions must be plainly marked as such, and must not be
* misrepresented as being the original software.
* 3. This notice may not be removed or altered from any source distribution.
*/

part of acanvas_physics;

class PyramidBenchmark implements IBenchmark {
  int size = 5;
  String Name() {
    return "Pyramid";
  }

  void Init(b2World world) {
    world.SetGravity(new b2Vec2(0.0, 10.0));

    b2BodyDef bodyDef = new b2BodyDef();
    b2BodyDef groundDef = new b2BodyDef();
    groundDef.position.Set(5.0, 11.0);
    b2Body body = world.CreateBody(groundDef);
    b2PolygonShape ground = b2PolygonShape.AsBox(20.0, .5);
    body.CreateFixture2(ground);

    bodyDef.type = b2Body.b2_dynamicBody;
    b2PolygonShape box = b2PolygonShape.AsBox(.5, .5);
    for (int row = 0; row < size; row++) {
      for (int column = 0; column <= row; column++) {
        bodyDef.position.Set(groundDef.position.x + (column - row / 2) * 1, groundDef.position.y - (size - row) * 1.1);
        body = world.CreateBody(bodyDef);
        b2FixtureDef fd = new b2FixtureDef();
        fd.density = 1.0;
        fd.shape = box;
        body.CreateFixture(fd);
      }
    }
  }

  void Update() {}
}
