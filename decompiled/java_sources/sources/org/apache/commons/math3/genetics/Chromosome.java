package org.apache.commons.math3.genetics;

/* loaded from: classes12.dex */
public abstract class Chromosome implements Comparable<Chromosome>, Fitness {

    /* renamed from: f */
    public static final double f108198f = Double.NEGATIVE_INFINITY;

    /* renamed from: e */
    public double f108199e = Double.NEGATIVE_INFINITY;

    public Chromosome findSameChromosome(Population population) {
        for (Chromosome chromosome : population) {
            if (isSame(chromosome)) {
                return chromosome;
            }
        }
        return null;
    }

    public double getFitness() {
        if (this.f108199e == Double.NEGATIVE_INFINITY) {
            this.f108199e = fitness();
        }
        return this.f108199e;
    }

    public boolean isSame(Chromosome chromosome) {
        return false;
    }

    public void searchForFitnessUpdate(Population population) {
        Chromosome findSameChromosome = findSameChromosome(population);
        if (findSameChromosome != null) {
            this.f108199e = findSameChromosome.getFitness();
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(Chromosome chromosome) {
        return Double.compare(getFitness(), chromosome.getFitness());
    }
}
