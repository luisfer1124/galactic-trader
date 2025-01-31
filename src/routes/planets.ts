import { Router, Request, Response, NextFunction } from 'express';
import { Planet, ApiResponse } from '@/types/planet';

const router = Router();

// Mock data
const planets: Planet[] = [
  {
    id: 1,
    name: 'Magrathea',
    resources: [
      {
        name: 'Custom Planets',
        quantity: 42,
        basePrice: 1000000
      }
    ],
    description: 'A legendary planet dedicated to planetary engineering',
    coordinates: { x: 0, y: 0 }
  }
];

// TODO: Implement GET /planets
router.get('/', (req: Request, res: Response<ApiResponse<Planet[]>>) => {
  try {
    const response: ApiResponse<Planet[]> = {
      status: 'success',
      data: planets,
      count: planets.length
    };
    
    res.json(response);
  } catch (error) {
    const errorResponse: ApiResponse<Planet[]> = {
      status: 'error',
      data: [],
      message: error instanceof Error ? error.message : 'Unknown error occurred'
    };
    
    res.status(500).json(errorResponse);
  }
});

// TODO: Implement GET /planets/:id
router.get('/:id', (req: Request, res: Response, next: NextFunction) => {
  // Your implementation here
});

export { router as planetsRouter };