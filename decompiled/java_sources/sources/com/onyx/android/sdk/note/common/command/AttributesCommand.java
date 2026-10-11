package com.onyx.android.sdk.note.common.command;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.HtmlUtils;
import com.onyx.android.sdk.note.common.data.command.UndoRedoArgs;
import com.onyx.android.sdk.note.common.data.shape.ShapeAttributesBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.utils.TextRenderUtil;
import com.onyx.android.sdk.note.extension.PhysiceExtKt;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00040\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u001a\u0010\u0006\u001a\u00020\u00002\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\u000e\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\fH\u0016J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0004H\u0002J\u0010\u0010\u0015\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002R\"\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00040\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0016R\"\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0016¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/command/AttributesCommand;", "Lcom/onyx/android/sdk/note/common/command/Command;", "", "", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;", "attrMap", "setShapeOriginAttrMap", "Lcom/onyx/android/sdk/note/common/data/command/UndoRedoArgs;", "args", "", "undo", "redo", "Lcom/onyx/android/sdk/note/common/command/CommandCloneArgs;", "cloneArgs", "clone", "b", "a", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "value", "d", "c", "Ljava/util/Map;", "shapeAttrPairs", "shapeOriginAttrMap", Constants.CONSTRUCTOR_NAME, "(Ljava/util/Map;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAttributesCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AttributesCommand.kt\ncom/onyx/android/sdk/note/common/command/AttributesCommand\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,123:1\n1855#2,2:124\n215#3,2:126\n215#3,2:128\n*S KotlinDebug\n*F\n+ 1 AttributesCommand.kt\ncom/onyx/android/sdk/note/common/command/AttributesCommand\n*L\n97#1:124,2\n115#1:126,2\n118#1:128,2\n*E\n"})
/* loaded from: classes8.dex */
public final class AttributesCommand extends Command {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public Map<Shape, ShapeAttributesBean> shapeAttrPairs;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public Map<String, ShapeAttributesBean> shapeOriginAttrMap;

    public AttributesCommand(@NotNull Map<Shape, ShapeAttributesBean> shapeAttrPairs) {
        Intrinsics.checkNotNullParameter(shapeAttrPairs, "shapeAttrPairs");
        this.shapeAttrPairs = shapeAttrPairs;
        this.shapeOriginAttrMap = new HashMap();
    }

    /* renamed from: a */
    public final void m33594a(UndoRedoArgs args) {
        List<? extends Shape> mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) args.getAddShapeList());
        boolean z = false;
        for (Map.Entry<Shape, ShapeAttributesBean> entry : this.shapeAttrPairs.entrySet()) {
            Shape key = entry.getKey();
            ShapeAttributesBean value = entry.getValue();
            args.unionPageChangeRect(key);
            if (value.getIsColorChanged()) {
                key.setStrokeColor(value.getColor());
            }
            if (value.getIsFillColorChanged()) {
                key.setFillColor(value.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_FILL_COLOR java.lang.String());
            }
            if (value.getIsFillColorEnabledChanged()) {
                key.enableFillColor(value.getIsFillColorEnabled());
            }
            if (value.getIsWidthChanged()) {
                key.setStrokeWidth(PhysiceExtKt.toScreenStrokeWidth(value.getShapeWidth()));
                key.clearRender();
                z = true;
            }
            if (value.getIsLineStyleTypeChanged()) {
                key.setLineStyle(value.getLineStyleType());
            }
            if (value.getIsRichTextChanged()) {
                m33597d(key, value);
            }
            args.unionPageChangeRect(key);
            mutableList.add(key);
            args.addChangedShape(key.getPageUniqueId(), key);
        }
        if (z) {
            m33596c(args);
        }
        args.setAddShapeList(mutableList);
    }

    /* renamed from: b */
    public final void m33595b(UndoRedoArgs args) {
        List<? extends Shape> mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) args.getAddShapeList());
        Iterator<Map.Entry<Shape, ShapeAttributesBean>> it2 = this.shapeAttrPairs.entrySet().iterator();
        boolean z = false;
        while (it2.hasNext()) {
            Shape key = it2.next().getKey();
            args.unionPageChangeRect(key);
            ShapeAttributesBean shapeAttributesBean = this.shapeOriginAttrMap.get(key.getShapeUniqueId());
            if (shapeAttributesBean != null) {
                if (Float.compare(shapeAttributesBean.getShapeWidth(), key.getStrokeWidth()) != 0) {
                    key.clearRender();
                    z = true;
                }
                key.setStrokeWidth(PhysiceExtKt.toScreenStrokeWidth(shapeAttributesBean.getShapeWidth()));
                key.setStrokeColor(shapeAttributesBean.getColor());
                key.setFillColor(shapeAttributesBean.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_FILL_COLOR java.lang.String());
                key.enableFillColor(shapeAttributesBean.getIsFillColorEnabled());
                key.setLineStyle(shapeAttributesBean.getLineStyleType());
                m33597d(key, shapeAttributesBean);
                args.unionPageChangeRect(key);
                mutableList.add(key);
                args.addChangedShape(key.getPageUniqueId(), key);
            }
        }
        if (z) {
            m33596c(args);
        }
        args.setAddShapeList(mutableList);
    }

    /* renamed from: c */
    public final void m33596c(UndoRedoArgs args) {
        Iterator<T> it2 = args.getAddShapeList().iterator();
        while (it2.hasNext()) {
            CollectionKt.addAll(args.getUpdateLinkList(), ((Shape) it2.next()).getLinkIdList());
        }
    }

    @Override // com.onyx.android.sdk.note.common.command.Command
    @NotNull
    public Command clone(@NotNull CommandCloneArgs cloneArgs) {
        Intrinsics.checkNotNullParameter(cloneArgs, "cloneArgs");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        AttributesCommand attributesCommand = new AttributesCommand(linkedHashMap);
        attributesCommand.setShapeOriginAttrMap(linkedHashMap2);
        for (Map.Entry<Shape, ShapeAttributesBean> entry : this.shapeAttrPairs.entrySet()) {
            linkedHashMap.put(cloneArgs.getOrCopyShape(entry.getKey()), entry.getValue().m72300clone());
        }
        for (Map.Entry<String, ShapeAttributesBean> entry2 : this.shapeOriginAttrMap.entrySet()) {
            linkedHashMap2.put(entry2.getKey(), entry2.getValue().m72300clone());
        }
        return attributesCommand;
    }

    /* renamed from: d */
    public final void m33597d(Shape shape, ShapeAttributesBean value) {
        List listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(48);
        if (listOf.contains(Integer.valueOf(shape.getType()))) {
            return;
        }
        shape.setRichText(value.getRichText());
        shape.setText(HtmlUtils.INSTANCE.getHtmlTextContent(value.getRichText()));
        TextRenderUtil.INSTANCE.clearCache(shape);
    }

    @Override // com.onyx.android.sdk.note.common.command.Command
    public void redo(@NotNull UndoRedoArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        m33594a(args);
    }

    @NotNull
    public final AttributesCommand setShapeOriginAttrMap(@NotNull Map<String, ShapeAttributesBean> attrMap) {
        Intrinsics.checkNotNullParameter(attrMap, "attrMap");
        this.shapeOriginAttrMap = attrMap;
        return this;
    }

    @Override // com.onyx.android.sdk.note.common.command.Command
    public void undo(@NotNull UndoRedoArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        m33595b(args);
    }
}
