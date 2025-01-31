import express, { Application } from 'express';
import morgan from 'morgan';
import { planetsRouter } from './routes/planets';

const app: Application = express();

// Middleware
app.use(express.json());
app.use(morgan('dev'));

// Routes
app.use('/planets', planetsRouter);


const PORT: number = parseInt(process.env.PORT || '3000');

app.listen(PORT, () => {
  console.log(`🚀 Server ready for intergalactic communications on port ${PORT}`);
});

export default app;