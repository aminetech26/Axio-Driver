class MockData {
  static final dashboardData = {
    "success": true,
    "message": "Dashboard data retrieved successfully",
    "data": {
      "stats": {
        "totalDeliveries": 156,
        "deliveriesThisMonth": 12,
        "totalDistance": 2547.8,
        "rating": 4.8
      },
      "recentActivities": [
        {
          "id": "act_1",
          "type": "delivery_completed",
          "description": "Livraison terminée à Alger",
          "timestamp": "2024-02-15T14:30:00Z"
        },
        {
          "id": "act_2",
          "type": "delivery_started",
          "description": "Nouvelle mission vers Oran",
          "timestamp": "2024-02-15T09:00:00Z"
        }
      ],
      "activeMission": {
        "id": "mission_123",
        "destination": "Oran",
        "expectedDelivery": "2024-02-16T18:00:00Z",
        "progress": 65.5,
        "stopsCompleted": 3,
        "totalStops": 5
      }
    }
  };

  static final historyData = {
    "success": true,
    "message": "Delivery history retrieved successfully",
    "data": [
      {
        "id": "del_123",
        "missionId": "mission_123",
        "destination": "Constantine",
        "startDate": "2024-02-10T08:00:00Z",
        "endDate": "2024-02-12T17:30:00Z",
        "distance": 463.5,
        "status": "completed",
        "rating": 4.8,
        "stops": [
          {
            "address": "123 Rue Larbi Ben M'hidi, Constantine",
            "arrivalTime": "2024-02-11T14:30:00Z",
            "status": "completed"
          }
        ]
      },
      {
        "id": "del_124",
        "missionId": "mission_124",
        "destination": "Annaba",
        "startDate": "2024-02-05T09:00:00Z",
        "endDate": "2024-02-07T16:00:00Z",
        "distance": 775.2,
        "status": "completed",
        "rating": 5.0,
        "stops": [
          {
            "address": "45 Boulevard de la Revolution, Annaba",
            "arrivalTime": "2024-02-06T15:00:00Z",
            "status": "completed"
          }
        ]
      }
    ],
    "pagination": {
      "currentPage": 1,
      "totalPages": 10,
      "itemsPerPage": 20,
      "totalItems": 186
    }
  };

  static final profileData = {
    "success": true,
    "message": "Driver profile retrieved successfully",
    "data": {
      "id": "driver_123",
      "firstName": "Karim",
      "lastName": "Benzaim",
      "email": "karim.benzaim@example.com",
      "phone": "+213555123456",
      "photoUrl": "https://randomuser.me/api/portraits/men/32.jpg",
      "license": {
        "number": "12345678",
        "type": "C",
        "expiryDate": "2025-12-31T00:00:00Z"
      },
      "currentVehicle": {
        "id": "vehicle_123",
        "model": "Renault T460",
        "plate": "16-123-456"
      },
      "stats": {
        "totalDeliveries": 156,
        "rating": 4.8,
        "joinedDate": "2023-01-15T00:00:00Z"
      },
      "certificates": [
        {
          "name": "FIMO",
          "issueDate": "2023-01-01T00:00:00Z",
          "expiryDate": "2028-01-01T00:00:00Z"
        }
      ]
    }
  };
}
