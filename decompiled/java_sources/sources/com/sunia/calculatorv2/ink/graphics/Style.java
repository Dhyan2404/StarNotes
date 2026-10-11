package com.sunia.calculatorv2.ink.graphics;

import android.graphics.BlendMode;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import com.sunia.HTREnginev2.C13858i1;
import com.sunia.HTREnginev2.EnumC14217p;
import com.sunia.HTREnginev2.InterfaceC13903j1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes10.dex */
public class Style {
    private final List<InterfaceC13903j1> properties = new ArrayList();

    /* renamed from: com.sunia.calculatorv2.ink.graphics.Style$a */
    /* loaded from: classes10.dex */
    public class C14796a implements InterfaceC13903j1 {

        /* renamed from: a */
        public final /* synthetic */ int f92398a;

        public C14796a(int i) {
            this.f92398a = i;
        }

        @Override // com.sunia.HTREnginev2.InterfaceC13903j1
        /* renamed from: a */
        public EnumC14217p mo54850a() {
            return EnumC14217p.BACKGROUND_COLOR;
        }

        @Override // com.sunia.HTREnginev2.InterfaceC13903j1
        /* renamed from: a */
        public void mo54851a(C13858i1 c13858i1) {
            c13858i1.m54663a().setColor(this.f92398a);
        }
    }

    /* renamed from: com.sunia.calculatorv2.ink.graphics.Style$b */
    /* loaded from: classes10.dex */
    public class C14797b implements InterfaceC13903j1 {

        /* renamed from: a */
        public final /* synthetic */ int f92399a;

        public C14797b(int i) {
            this.f92399a = i;
        }

        @Override // com.sunia.HTREnginev2.InterfaceC13903j1
        /* renamed from: a */
        public EnumC14217p mo54850a() {
            return EnumC14217p.FOREGROUND_COLOR;
        }

        @Override // com.sunia.HTREnginev2.InterfaceC13903j1
        /* renamed from: a */
        public void mo54851a(C13858i1 c13858i1) {
            c13858i1.m54666b().setColor(this.f92399a);
        }
    }

    /* renamed from: com.sunia.calculatorv2.ink.graphics.Style$c */
    /* loaded from: classes10.dex */
    public class C14798c implements InterfaceC13903j1 {

        /* renamed from: a */
        public final /* synthetic */ float[] f92400a;

        /* renamed from: b */
        public final /* synthetic */ float f92401b;

        public C14798c(float[] fArr, float f) {
            this.f92400a = fArr;
            this.f92401b = f;
        }

        @Override // com.sunia.HTREnginev2.InterfaceC13903j1
        /* renamed from: a */
        public EnumC14217p mo54850a() {
            return EnumC14217p.STROKE_DASH;
        }

        @Override // com.sunia.HTREnginev2.InterfaceC13903j1
        /* renamed from: a */
        public void mo54851a(C13858i1 c13858i1) {
            Paint m54666b = c13858i1.m54666b();
            float[] fArr = this.f92400a;
            float[] copyOf = Arrays.copyOf(fArr, fArr.length);
            for (int i = 0; i < copyOf.length; i++) {
                copyOf[i] = copyOf[i] * m54666b.getStrokeWidth();
            }
            m54666b.setPathEffect(new DashPathEffect(this.f92400a, this.f92401b * m54666b.getStrokeWidth()));
        }
    }

    /* renamed from: com.sunia.calculatorv2.ink.graphics.Style$d */
    /* loaded from: classes10.dex */
    public class C14799d implements InterfaceC13903j1 {

        /* renamed from: a */
        public final /* synthetic */ float f92402a;

        public C14799d(float f) {
            this.f92402a = f;
        }

        @Override // com.sunia.HTREnginev2.InterfaceC13903j1
        /* renamed from: a */
        public EnumC14217p mo54850a() {
            return EnumC14217p.SCALE;
        }

        @Override // com.sunia.HTREnginev2.InterfaceC13903j1
        /* renamed from: a */
        public void mo54851a(C13858i1 c13858i1) {
            c13858i1.m54666b().setStrokeWidth(this.f92402a * c13858i1.m54666b().getStrokeWidth());
        }
    }

    /* renamed from: com.sunia.calculatorv2.ink.graphics.Style$e */
    /* loaded from: classes10.dex */
    public class C14800e implements InterfaceC13903j1 {

        /* renamed from: a */
        public final /* synthetic */ Paint.Style f92403a;

        public C14800e(Paint.Style style) {
            this.f92403a = style;
        }

        @Override // com.sunia.HTREnginev2.InterfaceC13903j1
        /* renamed from: a */
        public EnumC14217p mo54850a() {
            return EnumC14217p.STYLE;
        }

        @Override // com.sunia.HTREnginev2.InterfaceC13903j1
        /* renamed from: a */
        public void mo54851a(C13858i1 c13858i1) {
            c13858i1.m54666b().setStyle(this.f92403a);
        }
    }

    /* renamed from: com.sunia.calculatorv2.ink.graphics.Style$f */
    /* loaded from: classes10.dex */
    public class C14801f implements InterfaceC13903j1 {

        /* renamed from: a */
        public final /* synthetic */ BlendMode f92404a;

        public C14801f(BlendMode blendMode) {
            this.f92404a = blendMode;
        }

        @Override // com.sunia.HTREnginev2.InterfaceC13903j1
        /* renamed from: a */
        public EnumC14217p mo54850a() {
            return EnumC14217p.BLEND_MODE;
        }

        @Override // com.sunia.HTREnginev2.InterfaceC13903j1
        /* renamed from: a */
        public void mo54851a(C13858i1 c13858i1) {
            c13858i1.m54666b().setBlendMode(this.f92404a);
        }
    }

    public static InterfaceC13903j1 createBackgroundColorProperty(int i) {
        return new C14796a(i);
    }

    public static InterfaceC13903j1 createBlendModeProperty(BlendMode blendMode) {
        return new C14801f(blendMode);
    }

    public static InterfaceC13903j1 createForegroundColorProperty(int i) {
        return new C14797b(i);
    }

    public static InterfaceC13903j1 createStrokeDashProperty(float[] fArr, float f) {
        return new C14798c(fArr, f);
    }

    public static InterfaceC13903j1 createStrokeFillProperty(Paint.Style style) {
        return new C14800e(style);
    }

    public static InterfaceC13903j1 createStrokeWidthProperty(float f) {
        return new C14799d(f);
    }

    public void addProperty(InterfaceC13903j1 interfaceC13903j1) {
        Iterator<InterfaceC13903j1> it2 = this.properties.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            InterfaceC13903j1 next = it2.next();
            if (next.mo54850a().equals(interfaceC13903j1.mo54850a())) {
                this.properties.remove(next);
                break;
            }
        }
        this.properties.add(interfaceC13903j1);
    }

    public List<InterfaceC13903j1> getProperties() {
        return this.properties;
    }
}
