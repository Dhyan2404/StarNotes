package io.opencensus.trace.propagation;

/* loaded from: classes10.dex */
public abstract class PropagationComponent {

    /* renamed from: a */
    public static final PropagationComponent f94977a = new C17238b();

    /* renamed from: io.opencensus.trace.propagation.PropagationComponent$b */
    /* loaded from: classes10.dex */
    public static final class C17238b extends PropagationComponent {
        public C17238b() {
        }

        @Override // io.opencensus.trace.propagation.PropagationComponent
        public TextFormat getB3Format() {
            return TextFormat.m61082a();
        }

        @Override // io.opencensus.trace.propagation.PropagationComponent
        public BinaryFormat getBinaryFormat() {
            return BinaryFormat.m61081a();
        }

        @Override // io.opencensus.trace.propagation.PropagationComponent
        public TextFormat getTraceContextFormat() {
            return TextFormat.m61082a();
        }
    }

    public static PropagationComponent getNoopPropagationComponent() {
        return f94977a;
    }

    public abstract TextFormat getB3Format();

    public abstract BinaryFormat getBinaryFormat();

    public abstract TextFormat getTraceContextFormat();
}
