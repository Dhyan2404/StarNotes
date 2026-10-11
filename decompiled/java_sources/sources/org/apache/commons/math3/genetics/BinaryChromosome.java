package org.apache.commons.math3.genetics;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* loaded from: classes12.dex */
public abstract class BinaryChromosome extends AbstractListChromosome<Integer> {
    public BinaryChromosome(List<Integer> list) throws InvalidRepresentationException {
        super(list);
    }

    public static List<Integer> randomBinaryRepresentation(int i) {
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(Integer.valueOf(GeneticAlgorithm.getRandomGenerator().nextInt(2)));
        }
        return arrayList;
    }

    @Override // org.apache.commons.math3.genetics.AbstractListChromosome
    public void checkValidity(List<Integer> list) throws InvalidRepresentationException {
        Iterator<Integer> it2 = list.iterator();
        while (it2.hasNext()) {
            int intValue = it2.next().intValue();
            if (intValue < 0 || intValue > 1) {
                throw new InvalidRepresentationException(LocalizedFormats.INVALID_BINARY_DIGIT, Integer.valueOf(intValue));
            }
        }
    }

    @Override // org.apache.commons.math3.genetics.Chromosome
    public boolean isSame(Chromosome chromosome) {
        if (!(chromosome instanceof BinaryChromosome)) {
            return false;
        }
        BinaryChromosome binaryChromosome = (BinaryChromosome) chromosome;
        if (getLength() != binaryChromosome.getLength()) {
            return false;
        }
        for (int i = 0; i < getRepresentation().size(); i++) {
            if (!getRepresentation().get(i).equals(binaryChromosome.getRepresentation().get(i))) {
                return false;
            }
        }
        return true;
    }

    public BinaryChromosome(Integer[] numArr) throws InvalidRepresentationException {
        super(numArr);
    }
}
