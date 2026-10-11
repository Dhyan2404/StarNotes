package com.onyx.android.sdk.note.common.command;

import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.command.CommandCloneArgs;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.object.ReferenceShape;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\t¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\u0017\u0010\u000e\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR,\u0010\u0011\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00020\u00070\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "getOrCopyShape", "", CouchFieldKey.KEY_TOC_PAGE_ID, "", C6998g.f39679a, "Lcom/onyx/android/sdk/note/NoteBundle;", "a", "Lcom/onyx/android/sdk/note/NoteBundle;", "getNoteBundle", "()Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "b", "Ljava/util/Map;", "pageShapeMap", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CommandCloneArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final NoteBundle noteBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Map<String, Map<String, Shape>> pageShapeMap;

    public CommandCloneArgs(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        this.noteBundle = noteBundle;
        this.pageShapeMap = new LinkedHashMap();
    }

    /* renamed from: d */
    public static final Map m33601d(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Map) tmp0.invoke(obj);
    }

    /* renamed from: e */
    public static final Shape m33602e(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Shape) tmp0.invoke(obj);
    }

    /* renamed from: f */
    public static final Map m33603f(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Map) tmp0.invoke(obj);
    }

    /* renamed from: g */
    public final Map<String, Shape> m33604g(String pageId) {
        ArrayList arrayList = new ArrayList();
        NotePage notePage = NoteDocNotePage.INSTANCE.getNotePage(this.noteBundle.getNoteDoc(), pageId);
        if (notePage != null) {
            CollectionKt.safeAddAll(arrayList, notePage.getNewAddedShapeMap().values());
            CollectionKt.safeAddAll(arrayList, notePage.getRemovedShapeMap().values());
            CollectionKt.safeAddAll(arrayList, notePage.getShapeList());
        }
        return MapsKt.toMutableMap(CollectionKt.toMap(arrayList, new Function1<Shape, String>() { // from class: com.onyx.android.sdk.note.common.command.CommandCloneArgs$getPageShapeMap$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getShapeUniqueId();
            }
        }));
    }

    @NotNull
    public final NoteBundle getNoteBundle() {
        return this.noteBundle;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v2, types: [T, java.lang.Object] */
    @NotNull
    public final Shape getOrCopyShape(@NotNull final Shape shape) {
        final Shape targetShape;
        Intrinsics.checkNotNullParameter(shape, "shape");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Map<String, Map<String, Shape>> map = this.pageShapeMap;
        String pageUniqueId = shape.getPageUniqueId();
        final Function1<String, Map<String, Shape>> function1 = new Function1<String, Map<String, Shape>>() { // from class: com.onyx.android.sdk.note.common.command.CommandCloneArgs$getOrCopyShape$shapeMap$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Map<String, Shape> invoke(@NotNull String it2) {
                Map<String, Shape> m33604g;
                Intrinsics.checkNotNullParameter(it2, "it");
                m33604g = CommandCloneArgs.this.m33604g(it2);
                return m33604g;
            }
        };
        ?? computeIfAbsent = map.computeIfAbsent(pageUniqueId, new Function() { // from class: com.sunia.HTREnginev2.v3e
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Map m33601d;
                m33601d = CommandCloneArgs.m33601d(Function1.this, obj);
                return m33601d;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        objectRef.element = computeIfAbsent;
        String shapeUniqueId = shape.getShapeUniqueId();
        final Function1<String, Shape> function12 = new Function1<String, Shape>() { // from class: com.onyx.android.sdk.note.common.command.CommandCloneArgs$getOrCopyShape$copyShape$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Shape invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return ShapeCopyUtils.INSTANCE.deepFullCopy(Shape.this);
            }
        };
        Object computeIfAbsent2 = ((Map) computeIfAbsent).computeIfAbsent(shapeUniqueId, new Function() { // from class: com.sunia.HTREnginev2.w3e
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Shape m33602e;
                m33602e = CommandCloneArgs.m33602e(Function1.this, obj);
                return m33602e;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent2, "computeIfAbsent(...)");
        Shape shape2 = (Shape) computeIfAbsent2;
        final ReferenceShape referenceShape = shape2 instanceof ReferenceShape ? (ReferenceShape) shape2 : null;
        if (referenceShape == null || (targetShape = referenceShape.getTargetShape()) == null) {
            return shape2;
        }
        Map<String, Map<String, Shape>> map2 = this.pageShapeMap;
        String pageUniqueId2 = targetShape.getPageUniqueId();
        final Function1<String, Map<String, Shape>> function13 = new Function1<String, Map<String, Shape>>() { // from class: com.onyx.android.sdk.note.common.command.CommandCloneArgs$getOrCopyShape$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Map<String, Shape> invoke(@NotNull String it2) {
                Map<String, Shape> m33604g;
                Intrinsics.checkNotNullParameter(it2, "it");
                m33604g = CommandCloneArgs.this.m33604g(it2);
                return m33604g;
            }
        };
        ?? computeIfAbsent3 = map2.computeIfAbsent(pageUniqueId2, new Function() { // from class: com.sunia.HTREnginev2.x3e
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Map m33603f;
                m33603f = CommandCloneArgs.m33603f(Function1.this, obj);
                return m33603f;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent3, "computeIfAbsent(...)");
        objectRef.element = computeIfAbsent3;
        AnyKt.whenNull(AnyKt.whenNotNull(((Map) computeIfAbsent3).get(targetShape.getShapeUniqueId()), new Function1<Shape, Unit>() { // from class: com.onyx.android.sdk.note.common.command.CommandCloneArgs$getOrCopyShape$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Shape shape3) {
                invoke2(shape3);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                ReferenceShape.this.setTargetShape(it2);
            }
        }), new Function1<Shape, Unit>() { // from class: com.onyx.android.sdk.note.common.command.CommandCloneArgs$getOrCopyShape$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Shape shape3) {
                invoke2(shape3);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Shape shape3) {
                objectRef.element.put(targetShape.getShapeUniqueId(), targetShape);
            }
        });
        return shape2;
    }
}
