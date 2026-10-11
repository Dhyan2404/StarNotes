package org.apache.commons.math3.genetics;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;

/* loaded from: classes12.dex */
public class NPointCrossover<T> implements CrossoverPolicy {

    /* renamed from: a */
    public final int f108217a;

    public NPointCrossover(int i) throws NotStrictlyPositiveException {
        if (i <= 0) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i));
        }
        this.f108217a = i;
    }

    /* renamed from: a */
    public final ChromosomePair m67599a(AbstractListChromosome<T> abstractListChromosome, AbstractListChromosome<T> abstractListChromosome2) throws DimensionMismatchException, NumberIsTooLargeException {
        int length = abstractListChromosome.getLength();
        if (length != abstractListChromosome2.getLength()) {
            throw new DimensionMismatchException(abstractListChromosome2.getLength(), length);
        }
        int i = 0;
        if (this.f108217a >= length) {
            throw new NumberIsTooLargeException(Integer.valueOf(this.f108217a), Integer.valueOf(length), false);
        }
        List<T> representation = abstractListChromosome.getRepresentation();
        List<T> representation2 = abstractListChromosome2.getRepresentation();
        ArrayList arrayList = new ArrayList(length);
        ArrayList arrayList2 = new ArrayList(length);
        RandomGenerator randomGenerator = GeneticAlgorithm.getRandomGenerator();
        ArrayList arrayList3 = arrayList;
        ArrayList arrayList4 = arrayList2;
        int i2 = this.f108217a;
        int i3 = 0;
        while (i < this.f108217a) {
            int nextInt = i3 + 1 + randomGenerator.nextInt((length - i3) - i2);
            while (i3 < nextInt) {
                arrayList3.add(representation.get(i3));
                arrayList4.add(representation2.get(i3));
                i3++;
            }
            i++;
            i2--;
            i3 = nextInt;
            ArrayList arrayList5 = arrayList4;
            arrayList4 = arrayList3;
            arrayList3 = arrayList5;
        }
        while (i3 < length) {
            arrayList3.add(representation.get(i3));
            arrayList4.add(representation2.get(i3));
            i3++;
        }
        return new ChromosomePair(abstractListChromosome.newFixedLengthChromosome(arrayList), abstractListChromosome2.newFixedLengthChromosome(arrayList2));
    }

    @Override // org.apache.commons.math3.genetics.CrossoverPolicy
    public ChromosomePair crossover(Chromosome chromosome, Chromosome chromosome2) throws DimensionMismatchException, MathIllegalArgumentException {
        if ((chromosome instanceof AbstractListChromosome) && (chromosome2 instanceof AbstractListChromosome)) {
            return m67599a((AbstractListChromosome) chromosome, (AbstractListChromosome) chromosome2);
        }
        throw new MathIllegalArgumentException(LocalizedFormats.INVALID_FIXED_LENGTH_CHROMOSOME, new Object[0]);
    }

    public int getCrossoverPoints() {
        return this.f108217a;
    }
}
