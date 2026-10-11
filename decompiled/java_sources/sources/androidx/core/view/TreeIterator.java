package androidx.core.view;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import xcrash.TombstoneParser;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\n\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B1\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u001a\u0010\u000e\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00020\u000b¢\u0006\u0004\b\u0017\u0010\u0018J\t\u0010\u0004\u001a\u00020\u0003H\u0096\u0002J\u0010\u0010\u0005\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\t\u0010\nR(\u0010\u000e\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR \u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0019"}, m61528d2 = {"Landroidx/core/view/TreeIterator;", "T", "", "", "hasNext", Constants.NEXT, "()Ljava/lang/Object;", "item", "", "a", "(Ljava/lang/Object;)V", "Lkotlin/Function1;", "e", "Lkotlin/jvm/functions/Function1;", "getChildIterator", "", C6997f.f39671c, "Ljava/util/List;", TombstoneParser.keyStack, C6998g.f39679a, "Ljava/util/Iterator;", Constants.ITERATOR_PNAME, "rootIterator", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/Iterator;Lkotlin/jvm/functions/Function1;)V", "core-ktx_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class TreeIterator<T> implements Iterator<T>, KMappedMarker {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Function1<T, Iterator<T>> getChildIterator;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<Iterator<T>> stack = new ArrayList();

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public Iterator<? extends T> iterator;

    /* JADX WARN: Multi-variable type inference failed */
    public TreeIterator(@NotNull Iterator<? extends T> it2, @NotNull Function1<? super T, ? extends Iterator<? extends T>> function1) {
        this.getChildIterator = function1;
        this.iterator = it2;
    }

    /* renamed from: a */
    public final void m3364a(T item) {
        Object last;
        Iterator<T> invoke = this.getChildIterator.invoke(item);
        if (invoke != null && invoke.hasNext()) {
            this.stack.add(this.iterator);
            this.iterator = invoke;
            return;
        }
        while (!this.iterator.hasNext() && (!this.stack.isEmpty())) {
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) this.stack);
            this.iterator = (Iterator) last;
            CollectionsKt__MutableCollectionsKt.removeLast(this.stack);
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.iterator.hasNext();
    }

    @Override // java.util.Iterator
    public T next() {
        T next = this.iterator.next();
        m3364a(next);
        return next;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
