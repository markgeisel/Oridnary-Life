{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "Rock",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"P_entity","path":"objects/P_entity/P_entity.yy",},"propertyId":{"name":"entityActivateScript","path":"objects/P_entity/P_entity.yy",},"value":"ActivateLiftable ",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"P_entity","path":"objects/P_entity/P_entity.yy",},"propertyId":{"name":"entityActivateArgs","path":"objects/P_entity/P_entity.yy",},"value":"[id]",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"P_entity","path":"objects/P_entity/P_entity.yy",},"propertyId":{"name":"entityHitScript","path":"objects/P_entity/P_entity.yy",},"value":"NpcHit",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"P_entity","path":"objects/P_entity/P_entity.yy",},"propertyId":{"name":"Health","path":"objects/P_entity/P_entity.yy",},"value":"30",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"P_entity","path":"objects/P_entity/P_entity.yy",},"propertyId":{"name":"entityThrowBreak","path":"objects/P_entity/P_entity.yy",},"value":"False",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"P_entity","path":"objects/P_entity/P_entity.yy",},"propertyId":{"name":"entityCull","path":"objects/P_entity/P_entity.yy",},"value":"False",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"P_Enemy","path":"objects/P_Enemy/P_Enemy.yy",},"propertyId":{"name":"enemyHP1","path":"objects/P_Enemy/P_Enemy.yy",},"value":"0",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"P_entity","path":"objects/P_entity/P_entity.yy",},"propertyId":{"name":"EntityFragmentCount","path":"objects/P_entity/P_entity.yy",},"value":"8",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"P_entity","path":"objects/P_entity/P_entity.yy",},"propertyId":{"name":"EntityFragment","path":"objects/P_entity/P_entity.yy",},"value":"RockFragment ",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"P_Enemy","path":"objects/P_Enemy/P_Enemy.yy",},"propertyId":{"name":"Healthbar","path":"objects/P_Enemy/P_Enemy.yy",},"value":"0",},
  ],
  "parent": {
    "name": "WorldInteractables",
    "path": "folders/Objects/WorldInteractables.yy",
  },
  "parentObjectId": {
    "name": "P_Enemy",
    "path": "objects/P_Enemy/P_Enemy.yy",
  },
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 0,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"enemyHP","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"5","varType":0,},
  ],
  "solid": false,
  "spriteId": {
    "name": "Srock",
    "path": "sprites/Srock/Srock.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}