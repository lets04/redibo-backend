import express from 'express';
import dotenv from 'dotenv';
import { PrismaClient } from '@prisma/client';
// import { PrismaClient } from '../generated/prisma';
import cors from 'cors';




dotenv.config();

const app = express();
app.use(cors());

app.use(express.json());

const PORT = process.env.PORT || 4000;

const prisma = new PrismaClient();

app.get('/', (req, res) => {
  res.send('hoaaa hijita');
});

app.listen(PORT, () => {
  console.log('Server running at http://localhost:' + PORT);
});

app.get('/get-autos', async (req, res) => {
    try {
        const autos = await prisma.auto.findMany()
        res.status(200).json(autos)
      } catch (error) {
        res.status(500).json({ message: error.message })
      }
})

app.post('/crear-auto', async (req, res) => {
    try {
        const nuevoAuto = await prisma.auto.create({
            data: req.body
        })
        res.status(201).json(nuevoAuto) 
    } catch (error) {
        res.status(500).json({ message: error.message })
    }
})




