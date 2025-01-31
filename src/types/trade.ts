export interface Trade {
    id: number;
    planetId: number;
    resourceName: string;
    quantity: number;
    price: number;
    timestamp: Date;
  }
  
  export interface TradeRequest {
    planetId: number;
    resourceName: string;
    quantity: number;
  }