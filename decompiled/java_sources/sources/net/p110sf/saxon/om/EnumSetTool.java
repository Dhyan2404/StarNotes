package net.p110sf.saxon.om;

import java.util.EnumSet;

/* loaded from: classes11.dex */
public class EnumSetTool {
    public static <P extends Enum<P>> EnumSet<P> except(EnumSet<P> enumSet, EnumSet<P> enumSet2) {
        EnumSet<P> copyOf = EnumSet.copyOf((EnumSet) enumSet);
        copyOf.removeAll(enumSet2);
        return copyOf;
    }

    public static <P extends Enum<P>> EnumSet<P> intersect(EnumSet<P> enumSet, EnumSet<P> enumSet2) {
        EnumSet<P> copyOf = EnumSet.copyOf((EnumSet) enumSet);
        copyOf.retainAll(enumSet2);
        return copyOf;
    }

    public static <P extends Enum<P>> EnumSet<P> union(EnumSet<P> enumSet, EnumSet<P> enumSet2) {
        EnumSet<P> copyOf = EnumSet.copyOf((EnumSet) enumSet);
        copyOf.addAll(enumSet2);
        return copyOf;
    }
}
