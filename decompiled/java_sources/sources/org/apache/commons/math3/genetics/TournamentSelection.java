package org.apache.commons.math3.genetics;

import java.util.ArrayList;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* loaded from: classes12.dex */
public class TournamentSelection implements SelectionPolicy {

    /* renamed from: a */
    public int f108220a;

    /* renamed from: org.apache.commons.math3.genetics.TournamentSelection$a */
    /* loaded from: classes12.dex */
    public class C19105a extends ListPopulation {
        public C19105a(int i) {
            super(i);
        }

        @Override // org.apache.commons.math3.genetics.Population
        public Population nextGeneration() {
            return null;
        }
    }

    public TournamentSelection(int i) {
        this.f108220a = i;
    }

    /* renamed from: a */
    public final Chromosome m67603a(ListPopulation listPopulation) throws MathIllegalArgumentException {
        int populationSize = listPopulation.getPopulationSize();
        int i = this.f108220a;
        if (populationSize < i) {
            throw new MathIllegalArgumentException(LocalizedFormats.TOO_LARGE_TOURNAMENT_ARITY, Integer.valueOf(this.f108220a), Integer.valueOf(listPopulation.getPopulationSize()));
        }
        C19105a c19105a = new C19105a(i);
        ArrayList arrayList = new ArrayList(listPopulation.getChromosomes());
        for (int i2 = 0; i2 < this.f108220a; i2++) {
            int nextInt = GeneticAlgorithm.getRandomGenerator().nextInt(arrayList.size());
            c19105a.addChromosome((Chromosome) arrayList.get(nextInt));
            arrayList.remove(nextInt);
        }
        return c19105a.getFittestChromosome();
    }

    public int getArity() {
        return this.f108220a;
    }

    @Override // org.apache.commons.math3.genetics.SelectionPolicy
    public ChromosomePair select(Population population) throws MathIllegalArgumentException {
        ListPopulation listPopulation = (ListPopulation) population;
        return new ChromosomePair(m67603a(listPopulation), m67603a(listPopulation));
    }

    public void setArity(int i) {
        this.f108220a = i;
    }
}
