package com.onyx.android.sdk.note.common.shape;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.note.common.shape.erase.AreaEraseShape;
import com.onyx.android.sdk.note.common.shape.erase.EraseOverlayShape;
import com.onyx.android.sdk.note.common.shape.fill.FillShape;
import com.onyx.android.sdk.note.common.shape.graphical.ArrowLineShape;
import com.onyx.android.sdk.note.common.shape.graphical.CircleShape;
import com.onyx.android.sdk.note.common.shape.graphical.LineShape;
import com.onyx.android.sdk.note.common.shape.graphical.PolyLineShape;
import com.onyx.android.sdk.note.common.shape.graphical.PolygonShape;
import com.onyx.android.sdk.note.common.shape.graphical.RectangleShape;
import com.onyx.android.sdk.note.common.shape.graphical.RegularHexagonShape;
import com.onyx.android.sdk.note.common.shape.graphical.RegularPolygonShape;
import com.onyx.android.sdk.note.common.shape.graphical.RhombusShape;
import com.onyx.android.sdk.note.common.shape.graphical.TrapezoidShape;
import com.onyx.android.sdk.note.common.shape.graphical.TriangleShape;
import com.onyx.android.sdk.note.common.shape.graphical.WaveLineShape;
import com.onyx.android.sdk.note.common.shape.object.AnnotationShape;
import com.onyx.android.sdk.note.common.shape.object.AttachmentShape;
import com.onyx.android.sdk.note.common.shape.object.AudioShape;
import com.onyx.android.sdk.note.common.shape.object.EditTextShape;
import com.onyx.android.sdk.note.common.shape.object.ExcerptShape;
import com.onyx.android.sdk.note.common.shape.object.HWRTextShape;
import com.onyx.android.sdk.note.common.shape.object.ImageShape;
import com.onyx.android.sdk.note.common.shape.object.LinkShape;
import com.onyx.android.sdk.note.common.shape.object.QuoteShape;
import com.onyx.android.sdk.note.common.shape.object.ReferenceShape;
import com.onyx.android.sdk.note.common.shape.object.SVGDrawableShape;
import com.onyx.android.sdk.note.common.shape.object.StampShape;
import com.onyx.android.sdk.note.common.shape.object.SvgShape;
import com.onyx.android.sdk.note.common.shape.object.TagShape;
import com.onyx.android.sdk.note.common.shape.object.TextExcerptShape;
import com.onyx.android.sdk.note.common.shape.object.TimestampShape;
import com.onyx.android.sdk.note.common.shape.pen.BallpointShape;
import com.onyx.android.sdk.note.common.shape.pen.BrushScribbleShape;
import com.onyx.android.sdk.note.common.shape.pen.CalligraphyScribbleShape;
import com.onyx.android.sdk.note.common.shape.pen.CharcoalScribbleShape;
import com.onyx.android.sdk.note.common.shape.pen.FreeShape;
import com.onyx.android.sdk.note.common.shape.pen.MarkerScribbleShape;
import com.onyx.android.sdk.note.common.shape.pen.NeoBrushShape;
import com.onyx.android.sdk.note.common.shape.pen.PencilScribbleShape;
import com.onyx.android.sdk.note.common.shape.pen.SoftPaintScribbleShape;
import com.onyx.android.sdk.note.common.shape.pen.TapeShape;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlin.reflect.full.KClasses;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007J(\u0010\r\u001a\u00020\f\"\b\b\u0000\u0010\t*\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0002RN\u0010\u0015\u001a.\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00040\n0\u000ej\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00040\n`\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;", "", "", "type", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "createInstance", BaiduYunConstant.CREATE, "", "createAll", "T", "Lkotlin/reflect/KClass;", "classType", "", "a", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "Ljava/util/HashMap;", "getMap", "()Ljava/util/HashMap;", "setMap", "(Ljava/util/HashMap;)V", Constant.MAP_TAG, Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeFactory.kt\ncom/onyx/android/sdk/note/common/shape/ShapeFactory\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,173:1\n215#2,2:174\n*S KotlinDebug\n*F\n+ 1 ShapeFactory.kt\ncom/onyx/android/sdk/note/common/shape/ShapeFactory\n*L\n169#1:174,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ShapeFactory {

    @NotNull
    public static final ShapeFactory INSTANCE;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static HashMap<Integer, KClass<? extends Shape>> map;

    static {
        ShapeFactory shapeFactory = new ShapeFactory();
        INSTANCE = shapeFactory;
        map = new HashMap<>();
        shapeFactory.m33800a(2, Reflection.getOrCreateKotlinClass(BallpointShape.class));
        shapeFactory.m33800a(5, Reflection.getOrCreateKotlinClass(BrushScribbleShape.class));
        shapeFactory.m33800a(47, Reflection.getOrCreateKotlinClass(CalligraphyScribbleShape.class));
        shapeFactory.m33800a(49, Reflection.getOrCreateKotlinClass(SoftPaintScribbleShape.class));
        shapeFactory.m33800a(39, Reflection.getOrCreateKotlinClass(TapeShape.class));
        shapeFactory.m33800a(15, Reflection.getOrCreateKotlinClass(MarkerScribbleShape.class));
        shapeFactory.m33800a(21, Reflection.getOrCreateKotlinClass(NeoBrushShape.class));
        shapeFactory.m33800a(22, Reflection.getOrCreateKotlinClass(CharcoalScribbleShape.class));
        shapeFactory.m33800a(46, Reflection.getOrCreateKotlinClass(PencilScribbleShape.class));
        shapeFactory.m33800a(36, Reflection.getOrCreateKotlinClass(FreeShape.class));
        shapeFactory.m33800a(0, Reflection.getOrCreateKotlinClass(CircleShape.class));
        shapeFactory.m33800a(1, Reflection.getOrCreateKotlinClass(RectangleShape.class));
        shapeFactory.m33800a(7, Reflection.getOrCreateKotlinClass(LineShape.class));
        shapeFactory.m33800a(8, Reflection.getOrCreateKotlinClass(TriangleShape.class));
        shapeFactory.m33800a(17, Reflection.getOrCreateKotlinClass(PolygonShape.class));
        shapeFactory.m33800a(18, Reflection.getOrCreateKotlinClass(RhombusShape.class));
        shapeFactory.m33800a(24, Reflection.getOrCreateKotlinClass(RegularPolygonShape.class));
        shapeFactory.m33800a(27, Reflection.getOrCreateKotlinClass(RegularHexagonShape.class));
        shapeFactory.m33800a(25, Reflection.getOrCreateKotlinClass(WaveLineShape.class));
        shapeFactory.m33800a(28, Reflection.getOrCreateKotlinClass(ArrowLineShape.class));
        shapeFactory.m33800a(31, Reflection.getOrCreateKotlinClass(PolyLineShape.class));
        shapeFactory.m33800a(26, Reflection.getOrCreateKotlinClass(TrapezoidShape.class));
        shapeFactory.m33800a(16, Reflection.getOrCreateKotlinClass(EditTextShape.class));
        shapeFactory.m33800a(19, Reflection.getOrCreateKotlinClass(ImageShape.class));
        shapeFactory.m33800a(23, Reflection.getOrCreateKotlinClass(AudioShape.class));
        shapeFactory.m33800a(32, Reflection.getOrCreateKotlinClass(StampShape.class));
        shapeFactory.m33800a(33, Reflection.getOrCreateKotlinClass(LinkShape.class));
        shapeFactory.m33800a(34, Reflection.getOrCreateKotlinClass(AttachmentShape.class));
        shapeFactory.m33800a(35, Reflection.getOrCreateKotlinClass(SvgShape.class));
        shapeFactory.m33800a(38, Reflection.getOrCreateKotlinClass(TimestampShape.class));
        shapeFactory.m33800a(40, Reflection.getOrCreateKotlinClass(UniversalShape.class));
        shapeFactory.m33800a(41, Reflection.getOrCreateKotlinClass(ExcerptShape.class));
        shapeFactory.m33800a(44, Reflection.getOrCreateKotlinClass(TextExcerptShape.class));
        shapeFactory.m33800a(42, Reflection.getOrCreateKotlinClass(QuoteShape.class));
        shapeFactory.m33800a(43, Reflection.getOrCreateKotlinClass(SVGDrawableShape.class));
        shapeFactory.m33800a(45, Reflection.getOrCreateKotlinClass(TagShape.class));
        shapeFactory.m33800a(37, Reflection.getOrCreateKotlinClass(FillShape.class));
        shapeFactory.m33800a(14, Reflection.getOrCreateKotlinClass(EraseOverlayShape.class));
        shapeFactory.m33800a(20, Reflection.getOrCreateKotlinClass(AreaEraseShape.class));
        shapeFactory.m33800a(9, Reflection.getOrCreateKotlinClass(AnnotationShape.class));
        shapeFactory.m33800a(2000, Reflection.getOrCreateKotlinClass(ReferenceShape.class));
        shapeFactory.m33800a(48, Reflection.getOrCreateKotlinClass(HWRTextShape.class));
    }

    /* renamed from: a */
    public final <T extends Shape> void m33800a(int type, KClass<T> classType) {
        map.put(Integer.valueOf(type), classType);
    }

    @NotNull
    public final Shape create(int type) {
        if (type == 0) {
            return new CircleShape();
        }
        if (type == 1) {
            return new RectangleShape();
        }
        if (type == 2) {
            return new BallpointShape();
        }
        if (type == 5) {
            return new BrushScribbleShape();
        }
        if (type == 2000) {
            return new ReferenceShape();
        }
        if (type == 7) {
            return new LineShape();
        }
        if (type == 8) {
            return new TriangleShape();
        }
        if (type == 9) {
            return new AnnotationShape();
        }
        switch (type) {
            case 14:
                return new EraseOverlayShape();
            case 15:
                return new MarkerScribbleShape();
            case 16:
                return new EditTextShape();
            case 17:
                return new PolygonShape();
            case 18:
                return new RhombusShape();
            case 19:
                return new ImageShape();
            case 20:
                return new AreaEraseShape();
            case 21:
                return new NeoBrushShape();
            case 22:
                return new CharcoalScribbleShape();
            case 23:
                return new AudioShape();
            case 24:
                return new RegularPolygonShape();
            case 25:
                return new WaveLineShape();
            case 26:
                return new TrapezoidShape();
            case 27:
                return new RegularHexagonShape();
            case 28:
                return new ArrowLineShape();
            default:
                switch (type) {
                    case 31:
                        return new PolyLineShape();
                    case 32:
                        return new StampShape();
                    case 33:
                        return new LinkShape();
                    case 34:
                        return new AttachmentShape();
                    case 35:
                        return new SvgShape();
                    case 36:
                        return new FreeShape();
                    case 37:
                        return new FillShape();
                    case 38:
                        return new TimestampShape();
                    case 39:
                        return new TapeShape();
                    case 40:
                        return new UniversalShape();
                    case 41:
                        return new ExcerptShape();
                    case 42:
                        return new QuoteShape();
                    case 43:
                        return new SVGDrawableShape();
                    case 44:
                        return new TextExcerptShape();
                    case 45:
                        return new TagShape();
                    case 46:
                        return new PencilScribbleShape();
                    case 47:
                        return new CalligraphyScribbleShape();
                    case 48:
                        return new HWRTextShape();
                    case 49:
                        return new SoftPaintScribbleShape();
                    default:
                        return createInstance(type);
                }
        }
    }

    @NotNull
    public final List<Shape> createAll() {
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<Integer, KClass<? extends Shape>>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            arrayList.add(KClasses.createInstance(it2.next().getValue()));
        }
        return arrayList;
    }

    @NotNull
    public final Shape createInstance(int type) {
        KClass<? extends Shape> kClass;
        return (!map.containsKey(Integer.valueOf(type)) || (kClass = map.get(Integer.valueOf(type))) == null) ? new BallpointShape() : (Shape) KClasses.createInstance(kClass);
    }

    @NotNull
    public final HashMap<Integer, KClass<? extends Shape>> getMap() {
        return map;
    }

    public final void setMap(@NotNull HashMap<Integer, KClass<? extends Shape>> hashMap) {
        Intrinsics.checkNotNullParameter(hashMap, "<set-?>");
        map = hashMap;
    }
}
