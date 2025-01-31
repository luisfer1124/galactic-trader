export interface Resource {
    name: string;
    quantity: number;
    basePrice: number;
  }
  
  export interface Planet {
    id: number;
    name: string;
    resources: Resource[];
    description: string;
    coordinates: {
      x: number;
      y: number;
    };
  }

  export interface ApiResponse<T> {
    status: 'success' | 'error';
    data: T;
    message?: string;
    count?: number;
  }