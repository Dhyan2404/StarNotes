package org.apache.poi.convert.xwpf.property;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher;
import org.apache.poi.style.UnitValue;
import org.apache.poi.xwpf.usermodel.ParagraphAlignment;
import org.apache.poi.xwpf.usermodel.TextAlignment;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBorder;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing;

/* loaded from: classes12.dex */
public class ParagraphPropertyListFetcher implements IParagraphPropertyFetcher {
    private List<IParagraphPropertyFetcher> list;

    public ParagraphPropertyListFetcher() {
        this.list = new ArrayList();
    }

    private <R> R findFirst(Function<IParagraphPropertyFetcher, R> function) {
        Iterator<IParagraphPropertyFetcher> it2 = this.list.iterator();
        while (it2.hasNext()) {
            R apply = function.apply(it2.next());
            if (!WordToHtmlUtils.isNull(apply)) {
                return apply;
            }
        }
        return null;
    }

    public void addFetcher(IParagraphPropertyFetcher iParagraphPropertyFetcher) {
        this.list.add(iParagraphPropertyFetcher);
    }

    @Override // org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public ParagraphAlignment getAlignment() {
        return (ParagraphAlignment) findFirst(new Function() { // from class: com.sunia.HTREnginev2.evk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IParagraphPropertyFetcher) obj).getAlignment();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.BordersFetcher
    public CTBorder[] getCTBorders() {
        return (CTBorder[]) findFirst(new Function() { // from class: com.sunia.HTREnginev2.bvk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IParagraphPropertyFetcher) obj).getCTBorders();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public CTSpacing getCTSpacing() {
        return (CTSpacing) findFirst(new Function() { // from class: com.sunia.HTREnginev2.hvk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IParagraphPropertyFetcher) obj).getCTSpacing();
            }
        });
    }

    public List<IParagraphPropertyFetcher> getList() {
        return this.list;
    }

    @Override // org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public UnitValue getMarginBottom() {
        return (UnitValue) findFirst(new Function() { // from class: com.sunia.HTREnginev2.ivk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IParagraphPropertyFetcher) obj).getMarginBottom();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public UnitValue getMarginLeft() {
        return (UnitValue) findFirst(new Function() { // from class: com.sunia.HTREnginev2.avk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IParagraphPropertyFetcher) obj).getMarginLeft();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public UnitValue getMarginRight() {
        return (UnitValue) findFirst(new Function() { // from class: com.sunia.HTREnginev2.dvk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IParagraphPropertyFetcher) obj).getMarginRight();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public UnitValue getMarginTop() {
        return (UnitValue) findFirst(new Function() { // from class: com.sunia.HTREnginev2.gvk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IParagraphPropertyFetcher) obj).getMarginTop();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public UnitValue getTextIndent() {
        return (UnitValue) findFirst(new Function() { // from class: com.sunia.HTREnginev2.fvk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IParagraphPropertyFetcher) obj).getTextIndent();
            }
        });
    }

    @Override // org.apache.poi.convert.xwpf.property.IParagraphPropertyFetcher
    public TextAlignment getVerticalAlignment() {
        return (TextAlignment) findFirst(new Function() { // from class: com.sunia.HTREnginev2.cvk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((IParagraphPropertyFetcher) obj).getVerticalAlignment();
            }
        });
    }

    public void addFetcher(List<IParagraphPropertyFetcher> list) {
        this.list.addAll(list);
    }

    public ParagraphPropertyListFetcher(List<IParagraphPropertyFetcher> list) {
        ArrayList arrayList = new ArrayList();
        this.list = arrayList;
        arrayList.addAll(list);
    }
}
