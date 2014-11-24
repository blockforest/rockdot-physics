/*
* Copyright (2006 as c)-2007 Erin Catto http://www.gphysics.com
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

 part of stagexl_box2d;







/**
* This structure is used to build edge shapes.
* @see b2EdgeShape
*/
 class b2EdgeChainDef// extends b2ShapeDef
{
	 b2EdgeChainDef()
	{
		//type = b2Shape.e_edgeShape;
		vertexCount = 0;
		isALoop = true;
		vertices = [];
	}

	/** The vertices in local coordinates. */
	 List vertices;
	
	/** The doubleber of vertices in the chain. */
	 int vertexCount;
	
	/** Whether to create an extra edge between the first and last vertices. */
	 bool isALoop;
}
