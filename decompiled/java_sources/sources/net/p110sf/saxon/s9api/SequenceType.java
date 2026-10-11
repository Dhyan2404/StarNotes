package net.p110sf.saxon.s9api;

/* loaded from: classes11.dex */
public class SequenceType {
    public static final SequenceType ANY = new SequenceType(ItemType.ANY_ITEM, OccurrenceIndicator.ZERO_OR_MORE);
    public static final SequenceType EMPTY = new SequenceType(ItemType.ERROR, OccurrenceIndicator.ZERO);

    /* renamed from: a */
    public final ItemType f101364a;

    /* renamed from: b */
    public final OccurrenceIndicator f101365b;

    public SequenceType(ItemType itemType, OccurrenceIndicator occurrenceIndicator) {
        this.f101364a = itemType;
        this.f101365b = occurrenceIndicator;
    }

    public static SequenceType fromUnderlyingSequenceType(Processor processor, net.p110sf.saxon.value.SequenceType sequenceType) {
        return makeSequenceType(new ItemTypeFactory(processor).exposeItemType(sequenceType.getPrimaryType()), OccurrenceIndicator.getOccurrenceIndicator(sequenceType.getCardinality()));
    }

    public static SequenceType makeSequenceType(ItemType itemType, OccurrenceIndicator occurrenceIndicator) {
        return new SequenceType(itemType, occurrenceIndicator);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SequenceType) {
            SequenceType sequenceType = (SequenceType) obj;
            if (sequenceType.getOccurrenceIndicator().equals(getOccurrenceIndicator()) && sequenceType.getItemType().equals(getItemType())) {
                return true;
            }
        }
        return false;
    }

    public ItemType getItemType() {
        return this.f101364a;
    }

    public OccurrenceIndicator getOccurrenceIndicator() {
        return this.f101365b;
    }

    public net.p110sf.saxon.value.SequenceType getUnderlyingSequenceType() {
        return net.p110sf.saxon.value.SequenceType.makeSequenceType(this.f101364a.getUnderlyingItemType(), this.f101365b.getCardinality());
    }

    public final int hashCode() {
        return (getOccurrenceIndicator().hashCode() << 17) ^ getItemType().hashCode();
    }
}
