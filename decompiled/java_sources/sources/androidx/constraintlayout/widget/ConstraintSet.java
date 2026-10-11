package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.motion.widget.Debug;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.widget.C0503R;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.hwr.data.constant.HwrRecognizerConstant;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import java.io.IOException;
import java.io.Writer;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.collections4.MapUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public class ConstraintSet {

    /* renamed from: A */
    public static final int f4400A = 12;

    /* renamed from: A0 */
    public static final int f4401A0 = 64;

    /* renamed from: B */
    public static final int f4402B = 13;

    /* renamed from: B0 */
    public static final int f4403B0 = 65;
    public static final int BASELINE = 5;
    public static final int BOTTOM = 4;

    /* renamed from: C */
    public static final int f4404C = 14;

    /* renamed from: C0 */
    public static final int f4405C0 = 66;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    public static final int CIRCLE_REFERENCE = 8;

    /* renamed from: D */
    public static final int f4406D = 15;

    /* renamed from: D0 */
    public static final int f4407D0 = 67;

    /* renamed from: E */
    public static final int f4408E = 16;

    /* renamed from: E0 */
    public static final int f4409E0 = 68;
    public static final int END = 7;

    /* renamed from: F */
    public static final int f4410F = 17;

    /* renamed from: F0 */
    public static final int f4411F0 = 69;

    /* renamed from: G */
    public static final int f4412G = 18;

    /* renamed from: G0 */
    public static final int f4413G0 = 70;
    public static final int GONE = 8;

    /* renamed from: H */
    public static final int f4414H = 19;

    /* renamed from: H0 */
    public static final int f4415H0 = 71;
    public static final int HORIZONTAL = 0;
    public static final int HORIZONTAL_GUIDELINE = 0;

    /* renamed from: I */
    public static final int f4416I = 20;

    /* renamed from: I0 */
    public static final int f4417I0 = 72;
    public static final int INVISIBLE = 4;

    /* renamed from: J */
    public static final int f4418J = 21;

    /* renamed from: J0 */
    public static final int f4419J0 = 73;

    /* renamed from: K */
    public static final int f4420K = 22;

    /* renamed from: K0 */
    public static final int f4421K0 = 74;

    /* renamed from: L */
    public static final int f4422L = 23;

    /* renamed from: L0 */
    public static final int f4423L0 = 75;
    public static final int LEFT = 1;

    /* renamed from: M */
    public static final int f4424M = 24;

    /* renamed from: M0 */
    public static final int f4425M0 = 76;
    public static final int MATCH_CONSTRAINT = 0;
    public static final int MATCH_CONSTRAINT_PERCENT = 2;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;

    /* renamed from: N */
    public static final int f4426N = 25;

    /* renamed from: N0 */
    public static final int f4427N0 = 77;

    /* renamed from: O */
    public static final int f4428O = 26;

    /* renamed from: O0 */
    public static final int f4429O0 = 78;

    /* renamed from: P */
    public static final int f4430P = 27;

    /* renamed from: P0 */
    public static final int f4431P0 = 79;
    public static final int PARENT_ID = 0;

    /* renamed from: Q */
    public static final int f4432Q = 28;

    /* renamed from: Q0 */
    public static final int f4433Q0 = 80;

    /* renamed from: R */
    public static final int f4434R = 29;

    /* renamed from: R0 */
    public static final int f4435R0 = 81;
    public static final int RIGHT = 2;
    public static final int ROTATE_LEFT_OF_PORTRATE = 4;
    public static final int ROTATE_NONE = 0;
    public static final int ROTATE_PORTRATE_OF_LEFT = 2;
    public static final int ROTATE_PORTRATE_OF_RIGHT = 1;
    public static final int ROTATE_RIGHT_OF_PORTRATE = 3;

    /* renamed from: S */
    public static final int f4436S = 30;

    /* renamed from: S0 */
    public static final int f4437S0 = 82;
    public static final int START = 6;

    /* renamed from: T */
    public static final int f4438T = 31;

    /* renamed from: T0 */
    public static final int f4439T0 = 83;
    public static final int TOP = 3;

    /* renamed from: U */
    public static final int f4440U = 32;

    /* renamed from: U0 */
    public static final int f4441U0 = 84;
    public static final int UNSET = -1;

    /* renamed from: V */
    public static final int f4442V = 33;

    /* renamed from: V0 */
    public static final int f4443V0 = 85;
    public static final int VERTICAL = 1;
    public static final int VERTICAL_GUIDELINE = 1;
    public static final int VISIBILITY_MODE_IGNORE = 1;
    public static final int VISIBILITY_MODE_NORMAL = 0;
    public static final int VISIBLE = 0;

    /* renamed from: W */
    public static final int f4444W = 34;

    /* renamed from: W0 */
    public static final int f4445W0 = 86;
    public static final int WRAP_CONTENT = -2;

    /* renamed from: X */
    public static final int f4446X = 35;

    /* renamed from: X0 */
    public static final int f4447X0 = 87;

    /* renamed from: Y */
    public static final int f4448Y = 36;

    /* renamed from: Y0 */
    public static final int f4449Y0 = 88;

    /* renamed from: Z */
    public static final int f4450Z = 37;

    /* renamed from: Z0 */
    public static final int f4451Z0 = 89;

    /* renamed from: a0 */
    public static final int f4452a0 = 38;

    /* renamed from: a1 */
    public static final int f4453a1 = 90;

    /* renamed from: b0 */
    public static final int f4454b0 = 39;

    /* renamed from: b1 */
    public static final int f4455b1 = 91;

    /* renamed from: c0 */
    public static final int f4456c0 = 40;

    /* renamed from: c1 */
    public static final int f4457c1 = 92;

    /* renamed from: d0 */
    public static final int f4458d0 = 41;

    /* renamed from: d1 */
    public static final int f4459d1 = 93;

    /* renamed from: e */
    public static final String f4460e = "ConstraintSet";

    /* renamed from: e0 */
    public static final int f4461e0 = 42;

    /* renamed from: e1 */
    public static final int f4462e1 = 94;

    /* renamed from: f */
    public static final String f4463f = "XML parser error must be within a Constraint ";

    /* renamed from: f0 */
    public static final int f4464f0 = 43;

    /* renamed from: f1 */
    public static final int f4465f1 = 95;

    /* renamed from: g */
    public static final int f4466g = -1;

    /* renamed from: g0 */
    public static final int f4467g0 = 44;

    /* renamed from: g1 */
    public static final int f4468g1 = 96;

    /* renamed from: h */
    public static final int f4469h = -2;

    /* renamed from: h0 */
    public static final int f4470h0 = 45;

    /* renamed from: h1 */
    public static final int f4471h1 = 97;

    /* renamed from: i */
    public static final int f4472i = -3;

    /* renamed from: i0 */
    public static final int f4473i0 = 46;

    /* renamed from: i1 */
    public static final int f4474i1 = 98;

    /* renamed from: j */
    public static final int f4475j = -4;

    /* renamed from: j0 */
    public static final int f4476j0 = 47;

    /* renamed from: j1 */
    public static final int f4477j1 = 99;

    /* renamed from: k */
    public static final boolean f4478k = false;

    /* renamed from: k0 */
    public static final int f4479k0 = 48;

    /* renamed from: k1 */
    public static final String f4480k1 = "weight";

    /* renamed from: l0 */
    public static final int f4482l0 = 49;

    /* renamed from: l1 */
    public static final String f4483l1 = "ratio";

    /* renamed from: m */
    public static final int f4484m = 1;

    /* renamed from: m0 */
    public static final int f4485m0 = 50;

    /* renamed from: m1 */
    public static final String f4486m1 = "parent";

    /* renamed from: n0 */
    public static final int f4488n0 = 51;

    /* renamed from: o0 */
    public static final int f4490o0 = 52;

    /* renamed from: p */
    public static final int f4491p = 1;

    /* renamed from: p0 */
    public static final int f4492p0 = 53;

    /* renamed from: q */
    public static final int f4493q = 2;

    /* renamed from: q0 */
    public static final int f4494q0 = 54;

    /* renamed from: r */
    public static final int f4495r = 3;

    /* renamed from: r0 */
    public static final int f4496r0 = 55;

    /* renamed from: s */
    public static final int f4497s = 4;

    /* renamed from: s0 */
    public static final int f4498s0 = 56;

    /* renamed from: t */
    public static final int f4499t = 5;

    /* renamed from: t0 */
    public static final int f4500t0 = 57;

    /* renamed from: u */
    public static final int f4501u = 6;

    /* renamed from: u0 */
    public static final int f4502u0 = 58;

    /* renamed from: v */
    public static final int f4503v = 7;

    /* renamed from: v0 */
    public static final int f4504v0 = 59;

    /* renamed from: w */
    public static final int f4505w = 8;

    /* renamed from: w0 */
    public static final int f4506w0 = 60;

    /* renamed from: x */
    public static final int f4507x = 9;

    /* renamed from: x0 */
    public static final int f4508x0 = 61;

    /* renamed from: y */
    public static final int f4509y = 10;

    /* renamed from: y0 */
    public static final int f4510y0 = 62;

    /* renamed from: z */
    public static final int f4511z = 11;

    /* renamed from: z0 */
    public static final int f4512z0 = 63;

    /* renamed from: a */
    public boolean f4513a;
    public String mIdString;

    /* renamed from: l */
    public static final int[] f4481l = {0, 4, 8};

    /* renamed from: n */
    public static SparseIntArray f4487n = new SparseIntArray();

    /* renamed from: o */
    public static SparseIntArray f4489o = new SparseIntArray();
    public String derivedState = "";
    public int mRotate = 0;

    /* renamed from: b */
    public HashMap<String, ConstraintAttribute> f4514b = new HashMap<>();

    /* renamed from: c */
    public boolean f4515c = true;

    /* renamed from: d */
    public HashMap<Integer, Constraint> f4516d = new HashMap<>();

    /* loaded from: classes3.dex */
    public static class Constraint {

        /* renamed from: a */
        public int f4517a;

        /* renamed from: b */
        public String f4518b;

        /* renamed from: c */
        public C0500a f4519c;
        public final PropertySet propertySet = new PropertySet();
        public final Motion motion = new Motion();
        public final Layout layout = new Layout();
        public final Transform transform = new Transform();
        public HashMap<String, ConstraintAttribute> mCustomConstraints = new HashMap<>();

        /* renamed from: androidx.constraintlayout.widget.ConstraintSet$Constraint$a */
        /* loaded from: classes3.dex */
        public static class C0500a {

            /* renamed from: m */
            public static final int f4520m = 4;

            /* renamed from: n */
            public static final int f4521n = 10;

            /* renamed from: o */
            public static final int f4522o = 10;

            /* renamed from: p */
            public static final int f4523p = 5;

            /* renamed from: a */
            public int[] f4524a = new int[10];

            /* renamed from: b */
            public int[] f4525b = new int[10];

            /* renamed from: c */
            public int f4526c = 0;

            /* renamed from: d */
            public int[] f4527d = new int[10];

            /* renamed from: e */
            public float[] f4528e = new float[10];

            /* renamed from: f */
            public int f4529f = 0;

            /* renamed from: g */
            public int[] f4530g = new int[5];

            /* renamed from: h */
            public String[] f4531h = new String[5];

            /* renamed from: i */
            public int f4532i = 0;

            /* renamed from: j */
            public int[] f4533j = new int[4];

            /* renamed from: k */
            public boolean[] f4534k = new boolean[4];

            /* renamed from: l */
            public int f4535l = 0;

            /* renamed from: a */
            public void m2190a(int type, float value) {
                int i = this.f4529f;
                int[] iArr = this.f4527d;
                if (i >= iArr.length) {
                    this.f4527d = Arrays.copyOf(iArr, iArr.length * 2);
                    float[] fArr = this.f4528e;
                    this.f4528e = Arrays.copyOf(fArr, fArr.length * 2);
                }
                int[] iArr2 = this.f4527d;
                int i2 = this.f4529f;
                iArr2[i2] = type;
                float[] fArr2 = this.f4528e;
                this.f4529f = i2 + 1;
                fArr2[i2] = value;
            }

            /* renamed from: b */
            public void m2191b(int type, int value) {
                int i = this.f4526c;
                int[] iArr = this.f4524a;
                if (i >= iArr.length) {
                    this.f4524a = Arrays.copyOf(iArr, iArr.length * 2);
                    int[] iArr2 = this.f4525b;
                    this.f4525b = Arrays.copyOf(iArr2, iArr2.length * 2);
                }
                int[] iArr3 = this.f4524a;
                int i2 = this.f4526c;
                iArr3[i2] = type;
                int[] iArr4 = this.f4525b;
                this.f4526c = i2 + 1;
                iArr4[i2] = value;
            }

            /* renamed from: c */
            public void m2192c(int type, String value) {
                int i = this.f4532i;
                int[] iArr = this.f4530g;
                if (i >= iArr.length) {
                    this.f4530g = Arrays.copyOf(iArr, iArr.length * 2);
                    String[] strArr = this.f4531h;
                    this.f4531h = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                }
                int[] iArr2 = this.f4530g;
                int i2 = this.f4532i;
                iArr2[i2] = type;
                String[] strArr2 = this.f4531h;
                this.f4532i = i2 + 1;
                strArr2[i2] = value;
            }

            /* renamed from: d */
            public void m2193d(int type, boolean value) {
                int i = this.f4535l;
                int[] iArr = this.f4533j;
                if (i >= iArr.length) {
                    this.f4533j = Arrays.copyOf(iArr, iArr.length * 2);
                    boolean[] zArr = this.f4534k;
                    this.f4534k = Arrays.copyOf(zArr, zArr.length * 2);
                }
                int[] iArr2 = this.f4533j;
                int i2 = this.f4535l;
                iArr2[i2] = type;
                boolean[] zArr2 = this.f4534k;
                this.f4535l = i2 + 1;
                zArr2[i2] = value;
            }

            /* renamed from: e */
            public void m2194e(Constraint c) {
                for (int i = 0; i < this.f4526c; i++) {
                    ConstraintSet.m2164w(c, this.f4524a[i], this.f4525b[i]);
                }
                for (int i2 = 0; i2 < this.f4529f; i2++) {
                    ConstraintSet.m2163v(c, this.f4527d[i2], this.f4528e[i2]);
                }
                for (int i3 = 0; i3 < this.f4532i; i3++) {
                    ConstraintSet.m2165x(c, this.f4530g[i3], this.f4531h[i3]);
                }
                for (int i4 = 0; i4 < this.f4535l; i4++) {
                    ConstraintSet.m2166y(c, this.f4533j[i4], this.f4534k[i4]);
                }
            }

            @SuppressLint({"LogConditional"})
            /* renamed from: f */
            public void m2195f(String tag) {
                Log.v(tag, "int");
                for (int i = 0; i < this.f4526c; i++) {
                    Log.v(tag, this.f4524a[i] + CloudStorageConstants.OPERATION_EQUAL + this.f4525b[i]);
                }
                Log.v(tag, "float");
                for (int i2 = 0; i2 < this.f4529f; i2++) {
                    Log.v(tag, this.f4527d[i2] + CloudStorageConstants.OPERATION_EQUAL + this.f4528e[i2]);
                }
                Log.v(tag, "strings");
                for (int i3 = 0; i3 < this.f4532i; i3++) {
                    Log.v(tag, this.f4530g[i3] + CloudStorageConstants.OPERATION_EQUAL + this.f4531h[i3]);
                }
                Log.v(tag, "boolean");
                for (int i4 = 0; i4 < this.f4535l; i4++) {
                    Log.v(tag, this.f4533j[i4] + CloudStorageConstants.OPERATION_EQUAL + this.f4534k[i4]);
                }
            }
        }

        public void applyDelta(Constraint c) {
            C0500a c0500a = this.f4519c;
            if (c0500a != null) {
                c0500a.m2194e(c);
            }
        }

        public void applyTo(ConstraintLayout.LayoutParams param) {
            Layout layout = this.layout;
            param.leftToLeft = layout.leftToLeft;
            param.leftToRight = layout.leftToRight;
            param.rightToLeft = layout.rightToLeft;
            param.rightToRight = layout.rightToRight;
            param.topToTop = layout.topToTop;
            param.topToBottom = layout.topToBottom;
            param.bottomToTop = layout.bottomToTop;
            param.bottomToBottom = layout.bottomToBottom;
            param.baselineToBaseline = layout.baselineToBaseline;
            param.baselineToTop = layout.baselineToTop;
            param.baselineToBottom = layout.baselineToBottom;
            param.startToEnd = layout.startToEnd;
            param.startToStart = layout.startToStart;
            param.endToStart = layout.endToStart;
            param.endToEnd = layout.endToEnd;
            ((ViewGroup.MarginLayoutParams) param).leftMargin = layout.leftMargin;
            ((ViewGroup.MarginLayoutParams) param).rightMargin = layout.rightMargin;
            ((ViewGroup.MarginLayoutParams) param).topMargin = layout.topMargin;
            ((ViewGroup.MarginLayoutParams) param).bottomMargin = layout.bottomMargin;
            param.goneStartMargin = layout.goneStartMargin;
            param.goneEndMargin = layout.goneEndMargin;
            param.goneTopMargin = layout.goneTopMargin;
            param.goneBottomMargin = layout.goneBottomMargin;
            param.horizontalBias = layout.horizontalBias;
            param.verticalBias = layout.verticalBias;
            param.circleConstraint = layout.circleConstraint;
            param.circleRadius = layout.circleRadius;
            param.circleAngle = layout.circleAngle;
            param.dimensionRatio = layout.dimensionRatio;
            param.editorAbsoluteX = layout.editorAbsoluteX;
            param.editorAbsoluteY = layout.editorAbsoluteY;
            param.verticalWeight = layout.verticalWeight;
            param.horizontalWeight = layout.horizontalWeight;
            param.verticalChainStyle = layout.verticalChainStyle;
            param.horizontalChainStyle = layout.horizontalChainStyle;
            param.constrainedWidth = layout.constrainedWidth;
            param.constrainedHeight = layout.constrainedHeight;
            param.matchConstraintDefaultWidth = layout.widthDefault;
            param.matchConstraintDefaultHeight = layout.heightDefault;
            param.matchConstraintMaxWidth = layout.widthMax;
            param.matchConstraintMaxHeight = layout.heightMax;
            param.matchConstraintMinWidth = layout.widthMin;
            param.matchConstraintMinHeight = layout.heightMin;
            param.matchConstraintPercentWidth = layout.widthPercent;
            param.matchConstraintPercentHeight = layout.heightPercent;
            param.orientation = layout.orientation;
            param.guidePercent = layout.guidePercent;
            param.guideBegin = layout.guideBegin;
            param.guideEnd = layout.guideEnd;
            ((ViewGroup.MarginLayoutParams) param).width = layout.mWidth;
            ((ViewGroup.MarginLayoutParams) param).height = layout.mHeight;
            String str = layout.mConstraintTag;
            if (str != null) {
                param.constraintTag = str;
            }
            param.wrapBehaviorInParent = layout.mWrapBehavior;
            param.setMarginStart(layout.startMargin);
            param.setMarginEnd(this.layout.endMargin);
            param.validate();
        }

        /* renamed from: h */
        public final void m2182h(int viewId, ConstraintLayout.LayoutParams param) {
            this.f4517a = viewId;
            Layout layout = this.layout;
            layout.leftToLeft = param.leftToLeft;
            layout.leftToRight = param.leftToRight;
            layout.rightToLeft = param.rightToLeft;
            layout.rightToRight = param.rightToRight;
            layout.topToTop = param.topToTop;
            layout.topToBottom = param.topToBottom;
            layout.bottomToTop = param.bottomToTop;
            layout.bottomToBottom = param.bottomToBottom;
            layout.baselineToBaseline = param.baselineToBaseline;
            layout.baselineToTop = param.baselineToTop;
            layout.baselineToBottom = param.baselineToBottom;
            layout.startToEnd = param.startToEnd;
            layout.startToStart = param.startToStart;
            layout.endToStart = param.endToStart;
            layout.endToEnd = param.endToEnd;
            layout.horizontalBias = param.horizontalBias;
            layout.verticalBias = param.verticalBias;
            layout.dimensionRatio = param.dimensionRatio;
            layout.circleConstraint = param.circleConstraint;
            layout.circleRadius = param.circleRadius;
            layout.circleAngle = param.circleAngle;
            layout.editorAbsoluteX = param.editorAbsoluteX;
            layout.editorAbsoluteY = param.editorAbsoluteY;
            layout.orientation = param.orientation;
            layout.guidePercent = param.guidePercent;
            layout.guideBegin = param.guideBegin;
            layout.guideEnd = param.guideEnd;
            layout.mWidth = ((ViewGroup.MarginLayoutParams) param).width;
            layout.mHeight = ((ViewGroup.MarginLayoutParams) param).height;
            layout.leftMargin = ((ViewGroup.MarginLayoutParams) param).leftMargin;
            layout.rightMargin = ((ViewGroup.MarginLayoutParams) param).rightMargin;
            layout.topMargin = ((ViewGroup.MarginLayoutParams) param).topMargin;
            layout.bottomMargin = ((ViewGroup.MarginLayoutParams) param).bottomMargin;
            layout.baselineMargin = param.baselineMargin;
            layout.verticalWeight = param.verticalWeight;
            layout.horizontalWeight = param.horizontalWeight;
            layout.verticalChainStyle = param.verticalChainStyle;
            layout.horizontalChainStyle = param.horizontalChainStyle;
            layout.constrainedWidth = param.constrainedWidth;
            layout.constrainedHeight = param.constrainedHeight;
            layout.widthDefault = param.matchConstraintDefaultWidth;
            layout.heightDefault = param.matchConstraintDefaultHeight;
            layout.widthMax = param.matchConstraintMaxWidth;
            layout.heightMax = param.matchConstraintMaxHeight;
            layout.widthMin = param.matchConstraintMinWidth;
            layout.heightMin = param.matchConstraintMinHeight;
            layout.widthPercent = param.matchConstraintPercentWidth;
            layout.heightPercent = param.matchConstraintPercentHeight;
            layout.mConstraintTag = param.constraintTag;
            layout.goneTopMargin = param.goneTopMargin;
            layout.goneBottomMargin = param.goneBottomMargin;
            layout.goneLeftMargin = param.goneLeftMargin;
            layout.goneRightMargin = param.goneRightMargin;
            layout.goneStartMargin = param.goneStartMargin;
            layout.goneEndMargin = param.goneEndMargin;
            layout.goneBaselineMargin = param.goneBaselineMargin;
            layout.mWrapBehavior = param.wrapBehaviorInParent;
            layout.endMargin = param.getMarginEnd();
            this.layout.startMargin = param.getMarginStart();
        }

        /* renamed from: i */
        public final void m2183i(int viewId, Constraints.LayoutParams param) {
            m2182h(viewId, param);
            this.propertySet.alpha = param.alpha;
            Transform transform = this.transform;
            transform.rotation = param.rotation;
            transform.rotationX = param.rotationX;
            transform.rotationY = param.rotationY;
            transform.scaleX = param.scaleX;
            transform.scaleY = param.scaleY;
            transform.transformPivotX = param.transformPivotX;
            transform.transformPivotY = param.transformPivotY;
            transform.translationX = param.translationX;
            transform.translationY = param.translationY;
            transform.translationZ = param.translationZ;
            transform.elevation = param.elevation;
            transform.applyElevation = param.applyElevation;
        }

        /* renamed from: j */
        public final void m2184j(ConstraintHelper helper, int viewId, Constraints.LayoutParams param) {
            m2183i(viewId, param);
            if (helper instanceof Barrier) {
                Layout layout = this.layout;
                layout.mHelperType = 1;
                Barrier barrier = (Barrier) helper;
                layout.mBarrierDirection = barrier.getType();
                this.layout.mReferenceIds = barrier.getReferencedIds();
                this.layout.mBarrierMargin = barrier.getMargin();
            }
        }

        /* renamed from: k */
        public final ConstraintAttribute m2185k(String attributeName, ConstraintAttribute.AttributeType attributeType) {
            if (!this.mCustomConstraints.containsKey(attributeName)) {
                ConstraintAttribute constraintAttribute = new ConstraintAttribute(attributeName, attributeType);
                this.mCustomConstraints.put(attributeName, constraintAttribute);
                return constraintAttribute;
            }
            ConstraintAttribute constraintAttribute2 = this.mCustomConstraints.get(attributeName);
            if (constraintAttribute2.getType() == attributeType) {
                return constraintAttribute2;
            }
            throw new IllegalArgumentException("ConstraintAttribute is already a " + constraintAttribute2.getType().name());
        }

        /* renamed from: l */
        public final void m2186l(String attributeName, int value) {
            m2185k(attributeName, ConstraintAttribute.AttributeType.COLOR_TYPE).setColorValue(value);
        }

        /* renamed from: m */
        public final void m2187m(String attributeName, float value) {
            m2185k(attributeName, ConstraintAttribute.AttributeType.FLOAT_TYPE).setFloatValue(value);
        }

        /* renamed from: n */
        public final void m2188n(String attributeName, int value) {
            m2185k(attributeName, ConstraintAttribute.AttributeType.INT_TYPE).setIntValue(value);
        }

        /* renamed from: o */
        public final void m2189o(String attributeName, String value) {
            m2185k(attributeName, ConstraintAttribute.AttributeType.STRING_TYPE).setStringValue(value);
        }

        public void printDelta(String tag) {
            C0500a c0500a = this.f4519c;
            if (c0500a != null) {
                c0500a.m2195f(tag);
            } else {
                Log.v(tag, "DELTA IS NULL");
            }
        }

        /* renamed from: clone, reason: merged with bridge method [inline-methods] */
        public Constraint m72119clone() {
            Constraint constraint = new Constraint();
            constraint.layout.copyFrom(this.layout);
            constraint.motion.copyFrom(this.motion);
            constraint.propertySet.copyFrom(this.propertySet);
            constraint.transform.copyFrom(this.transform);
            constraint.f4517a = this.f4517a;
            constraint.f4519c = this.f4519c;
            return constraint;
        }
    }

    /* loaded from: classes3.dex */
    public static class Layout {

        /* renamed from: A */
        public static final int f4536A = 26;

        /* renamed from: B */
        public static final int f4537B = 27;

        /* renamed from: C */
        public static final int f4538C = 28;

        /* renamed from: D */
        public static final int f4539D = 29;

        /* renamed from: E */
        public static final int f4540E = 30;

        /* renamed from: F */
        public static final int f4541F = 31;

        /* renamed from: G */
        public static final int f4542G = 32;

        /* renamed from: H */
        public static final int f4543H = 33;

        /* renamed from: I */
        public static final int f4544I = 34;

        /* renamed from: J */
        public static final int f4545J = 35;

        /* renamed from: K */
        public static final int f4546K = 36;

        /* renamed from: L */
        public static final int f4547L = 37;

        /* renamed from: M */
        public static final int f4548M = 38;

        /* renamed from: N */
        public static final int f4549N = 39;

        /* renamed from: O */
        public static final int f4550O = 40;

        /* renamed from: P */
        public static final int f4551P = 41;

        /* renamed from: Q */
        public static final int f4552Q = 42;

        /* renamed from: R */
        public static final int f4553R = 61;

        /* renamed from: S */
        public static final int f4554S = 62;

        /* renamed from: T */
        public static final int f4555T = 63;

        /* renamed from: U */
        public static final int f4556U = 69;
        public static final int UNSET = -1;
        public static final int UNSET_GONE_MARGIN = Integer.MIN_VALUE;

        /* renamed from: V */
        public static final int f4557V = 70;

        /* renamed from: W */
        public static final int f4558W = 71;

        /* renamed from: X */
        public static final int f4559X = 72;

        /* renamed from: Y */
        public static final int f4560Y = 73;

        /* renamed from: Z */
        public static final int f4561Z = 74;

        /* renamed from: a */
        public static SparseIntArray f4562a = null;

        /* renamed from: a0 */
        public static final int f4563a0 = 75;

        /* renamed from: b */
        public static final int f4564b = 1;

        /* renamed from: b0 */
        public static final int f4565b0 = 76;

        /* renamed from: c */
        public static final int f4566c = 2;

        /* renamed from: c0 */
        public static final int f4567c0 = 77;

        /* renamed from: d */
        public static final int f4568d = 3;

        /* renamed from: d0 */
        public static final int f4569d0 = 78;

        /* renamed from: e */
        public static final int f4570e = 4;

        /* renamed from: e0 */
        public static final int f4571e0 = 79;

        /* renamed from: f */
        public static final int f4572f = 5;

        /* renamed from: f0 */
        public static final int f4573f0 = 80;

        /* renamed from: g */
        public static final int f4574g = 6;

        /* renamed from: g0 */
        public static final int f4575g0 = 81;

        /* renamed from: h */
        public static final int f4576h = 7;

        /* renamed from: h0 */
        public static final int f4577h0 = 82;

        /* renamed from: i */
        public static final int f4578i = 8;

        /* renamed from: i0 */
        public static final int f4579i0 = 83;

        /* renamed from: j */
        public static final int f4580j = 9;

        /* renamed from: j0 */
        public static final int f4581j0 = 84;

        /* renamed from: k */
        public static final int f4582k = 10;

        /* renamed from: k0 */
        public static final int f4583k0 = 85;

        /* renamed from: l */
        public static final int f4584l = 11;

        /* renamed from: l0 */
        public static final int f4585l0 = 86;

        /* renamed from: m */
        public static final int f4586m = 12;

        /* renamed from: m0 */
        public static final int f4587m0 = 87;

        /* renamed from: n */
        public static final int f4588n = 13;

        /* renamed from: n0 */
        public static final int f4589n0 = 88;

        /* renamed from: o */
        public static final int f4590o = 14;

        /* renamed from: o0 */
        public static final int f4591o0 = 89;

        /* renamed from: p */
        public static final int f4592p = 15;

        /* renamed from: p0 */
        public static final int f4593p0 = 90;

        /* renamed from: q */
        public static final int f4594q = 16;

        /* renamed from: q0 */
        public static final int f4595q0 = 91;

        /* renamed from: r */
        public static final int f4596r = 17;

        /* renamed from: s */
        public static final int f4597s = 18;

        /* renamed from: t */
        public static final int f4598t = 19;

        /* renamed from: u */
        public static final int f4599u = 20;

        /* renamed from: v */
        public static final int f4600v = 21;

        /* renamed from: w */
        public static final int f4601w = 22;

        /* renamed from: x */
        public static final int f4602x = 23;

        /* renamed from: y */
        public static final int f4603y = 24;

        /* renamed from: z */
        public static final int f4604z = 25;
        public String mConstraintTag;
        public int mHeight;
        public String mReferenceIdString;
        public int[] mReferenceIds;
        public int mWidth;
        public boolean mIsGuideline = false;
        public boolean mApply = false;
        public boolean mOverride = false;
        public int guideBegin = -1;
        public int guideEnd = -1;
        public float guidePercent = -1.0f;
        public boolean guidelineUseRtl = true;
        public int leftToLeft = -1;
        public int leftToRight = -1;
        public int rightToLeft = -1;
        public int rightToRight = -1;
        public int topToTop = -1;
        public int topToBottom = -1;
        public int bottomToTop = -1;
        public int bottomToBottom = -1;
        public int baselineToBaseline = -1;
        public int baselineToTop = -1;
        public int baselineToBottom = -1;
        public int startToEnd = -1;
        public int startToStart = -1;
        public int endToStart = -1;
        public int endToEnd = -1;
        public float horizontalBias = 0.5f;
        public float verticalBias = 0.5f;
        public String dimensionRatio = null;
        public int circleConstraint = -1;
        public int circleRadius = 0;
        public float circleAngle = 0.0f;
        public int editorAbsoluteX = -1;
        public int editorAbsoluteY = -1;
        public int orientation = -1;
        public int leftMargin = 0;
        public int rightMargin = 0;
        public int topMargin = 0;
        public int bottomMargin = 0;
        public int endMargin = 0;
        public int startMargin = 0;
        public int baselineMargin = 0;
        public int goneLeftMargin = Integer.MIN_VALUE;
        public int goneTopMargin = Integer.MIN_VALUE;
        public int goneRightMargin = Integer.MIN_VALUE;
        public int goneBottomMargin = Integer.MIN_VALUE;
        public int goneEndMargin = Integer.MIN_VALUE;
        public int goneStartMargin = Integer.MIN_VALUE;
        public int goneBaselineMargin = Integer.MIN_VALUE;
        public float verticalWeight = -1.0f;
        public float horizontalWeight = -1.0f;
        public int horizontalChainStyle = 0;
        public int verticalChainStyle = 0;
        public int widthDefault = 0;
        public int heightDefault = 0;
        public int widthMax = 0;
        public int heightMax = 0;
        public int widthMin = 0;
        public int heightMin = 0;
        public float widthPercent = 1.0f;
        public float heightPercent = 1.0f;
        public int mBarrierDirection = -1;
        public int mBarrierMargin = 0;
        public int mHelperType = -1;
        public boolean constrainedWidth = false;
        public boolean constrainedHeight = false;
        public boolean mBarrierAllowsGoneWidgets = true;
        public int mWrapBehavior = 0;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f4562a = sparseIntArray;
            sparseIntArray.append(C0503R.styleable.Layout_layout_constraintLeft_toLeftOf, 24);
            f4562a.append(C0503R.styleable.Layout_layout_constraintLeft_toRightOf, 25);
            f4562a.append(C0503R.styleable.Layout_layout_constraintRight_toLeftOf, 28);
            f4562a.append(C0503R.styleable.Layout_layout_constraintRight_toRightOf, 29);
            f4562a.append(C0503R.styleable.Layout_layout_constraintTop_toTopOf, 35);
            f4562a.append(C0503R.styleable.Layout_layout_constraintTop_toBottomOf, 34);
            f4562a.append(C0503R.styleable.Layout_layout_constraintBottom_toTopOf, 4);
            f4562a.append(C0503R.styleable.Layout_layout_constraintBottom_toBottomOf, 3);
            f4562a.append(C0503R.styleable.Layout_layout_constraintBaseline_toBaselineOf, 1);
            f4562a.append(C0503R.styleable.Layout_layout_editor_absoluteX, 6);
            f4562a.append(C0503R.styleable.Layout_layout_editor_absoluteY, 7);
            f4562a.append(C0503R.styleable.Layout_layout_constraintGuide_begin, 17);
            f4562a.append(C0503R.styleable.Layout_layout_constraintGuide_end, 18);
            f4562a.append(C0503R.styleable.Layout_layout_constraintGuide_percent, 19);
            f4562a.append(C0503R.styleable.Layout_guidelineUseRtl, 90);
            f4562a.append(C0503R.styleable.Layout_android_orientation, 26);
            f4562a.append(C0503R.styleable.Layout_layout_constraintStart_toEndOf, 31);
            f4562a.append(C0503R.styleable.Layout_layout_constraintStart_toStartOf, 32);
            f4562a.append(C0503R.styleable.Layout_layout_constraintEnd_toStartOf, 10);
            f4562a.append(C0503R.styleable.Layout_layout_constraintEnd_toEndOf, 9);
            f4562a.append(C0503R.styleable.Layout_layout_goneMarginLeft, 13);
            f4562a.append(C0503R.styleable.Layout_layout_goneMarginTop, 16);
            f4562a.append(C0503R.styleable.Layout_layout_goneMarginRight, 14);
            f4562a.append(C0503R.styleable.Layout_layout_goneMarginBottom, 11);
            f4562a.append(C0503R.styleable.Layout_layout_goneMarginStart, 15);
            f4562a.append(C0503R.styleable.Layout_layout_goneMarginEnd, 12);
            f4562a.append(C0503R.styleable.Layout_layout_constraintVertical_weight, 38);
            f4562a.append(C0503R.styleable.Layout_layout_constraintHorizontal_weight, 37);
            f4562a.append(C0503R.styleable.Layout_layout_constraintHorizontal_chainStyle, 39);
            f4562a.append(C0503R.styleable.Layout_layout_constraintVertical_chainStyle, 40);
            f4562a.append(C0503R.styleable.Layout_layout_constraintHorizontal_bias, 20);
            f4562a.append(C0503R.styleable.Layout_layout_constraintVertical_bias, 36);
            f4562a.append(C0503R.styleable.Layout_layout_constraintDimensionRatio, 5);
            f4562a.append(C0503R.styleable.Layout_layout_constraintLeft_creator, 91);
            f4562a.append(C0503R.styleable.Layout_layout_constraintTop_creator, 91);
            f4562a.append(C0503R.styleable.Layout_layout_constraintRight_creator, 91);
            f4562a.append(C0503R.styleable.Layout_layout_constraintBottom_creator, 91);
            f4562a.append(C0503R.styleable.Layout_layout_constraintBaseline_creator, 91);
            f4562a.append(C0503R.styleable.Layout_android_layout_marginLeft, 23);
            f4562a.append(C0503R.styleable.Layout_android_layout_marginRight, 27);
            f4562a.append(C0503R.styleable.Layout_android_layout_marginStart, 30);
            f4562a.append(C0503R.styleable.Layout_android_layout_marginEnd, 8);
            f4562a.append(C0503R.styleable.Layout_android_layout_marginTop, 33);
            f4562a.append(C0503R.styleable.Layout_android_layout_marginBottom, 2);
            f4562a.append(C0503R.styleable.Layout_android_layout_width, 22);
            f4562a.append(C0503R.styleable.Layout_android_layout_height, 21);
            f4562a.append(C0503R.styleable.Layout_layout_constraintWidth, 41);
            f4562a.append(C0503R.styleable.Layout_layout_constraintHeight, 42);
            f4562a.append(C0503R.styleable.Layout_layout_constrainedWidth, 41);
            f4562a.append(C0503R.styleable.Layout_layout_constrainedHeight, 42);
            f4562a.append(C0503R.styleable.Layout_layout_wrapBehaviorInParent, 76);
            f4562a.append(C0503R.styleable.Layout_layout_constraintCircle, 61);
            f4562a.append(C0503R.styleable.Layout_layout_constraintCircleRadius, 62);
            f4562a.append(C0503R.styleable.Layout_layout_constraintCircleAngle, 63);
            f4562a.append(C0503R.styleable.Layout_layout_constraintWidth_percent, 69);
            f4562a.append(C0503R.styleable.Layout_layout_constraintHeight_percent, 70);
            f4562a.append(C0503R.styleable.Layout_chainUseRtl, 71);
            f4562a.append(C0503R.styleable.Layout_barrierDirection, 72);
            f4562a.append(C0503R.styleable.Layout_barrierMargin, 73);
            f4562a.append(C0503R.styleable.Layout_constraint_referenced_ids, 74);
            f4562a.append(C0503R.styleable.Layout_barrierAllowsGoneWidgets, 75);
        }

        /* renamed from: a */
        public void m2196a(Context context, AttributeSet attrs) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, C0503R.styleable.Layout);
            this.mApply = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                int i2 = f4562a.get(index);
                switch (i2) {
                    case 1:
                        this.baselineToBaseline = ConstraintSet.m2158p(obtainStyledAttributes, index, this.baselineToBaseline);
                        break;
                    case 2:
                        this.bottomMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.bottomMargin);
                        break;
                    case 3:
                        this.bottomToBottom = ConstraintSet.m2158p(obtainStyledAttributes, index, this.bottomToBottom);
                        break;
                    case 4:
                        this.bottomToTop = ConstraintSet.m2158p(obtainStyledAttributes, index, this.bottomToTop);
                        break;
                    case 5:
                        this.dimensionRatio = obtainStyledAttributes.getString(index);
                        break;
                    case 6:
                        this.editorAbsoluteX = obtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteX);
                        break;
                    case 7:
                        this.editorAbsoluteY = obtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteY);
                        break;
                    case 8:
                        this.endMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.endMargin);
                        break;
                    case 9:
                        this.endToEnd = ConstraintSet.m2158p(obtainStyledAttributes, index, this.endToEnd);
                        break;
                    case 10:
                        this.endToStart = ConstraintSet.m2158p(obtainStyledAttributes, index, this.endToStart);
                        break;
                    case 11:
                        this.goneBottomMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneBottomMargin);
                        break;
                    case 12:
                        this.goneEndMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneEndMargin);
                        break;
                    case 13:
                        this.goneLeftMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneLeftMargin);
                        break;
                    case 14:
                        this.goneRightMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneRightMargin);
                        break;
                    case 15:
                        this.goneStartMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneStartMargin);
                        break;
                    case 16:
                        this.goneTopMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneTopMargin);
                        break;
                    case 17:
                        this.guideBegin = obtainStyledAttributes.getDimensionPixelOffset(index, this.guideBegin);
                        break;
                    case 18:
                        this.guideEnd = obtainStyledAttributes.getDimensionPixelOffset(index, this.guideEnd);
                        break;
                    case 19:
                        this.guidePercent = obtainStyledAttributes.getFloat(index, this.guidePercent);
                        break;
                    case 20:
                        this.horizontalBias = obtainStyledAttributes.getFloat(index, this.horizontalBias);
                        break;
                    case 21:
                        this.mHeight = obtainStyledAttributes.getLayoutDimension(index, this.mHeight);
                        break;
                    case 22:
                        this.mWidth = obtainStyledAttributes.getLayoutDimension(index, this.mWidth);
                        break;
                    case 23:
                        this.leftMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.leftMargin);
                        break;
                    case 24:
                        this.leftToLeft = ConstraintSet.m2158p(obtainStyledAttributes, index, this.leftToLeft);
                        break;
                    case 25:
                        this.leftToRight = ConstraintSet.m2158p(obtainStyledAttributes, index, this.leftToRight);
                        break;
                    case 26:
                        this.orientation = obtainStyledAttributes.getInt(index, this.orientation);
                        break;
                    case 27:
                        this.rightMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.rightMargin);
                        break;
                    case 28:
                        this.rightToLeft = ConstraintSet.m2158p(obtainStyledAttributes, index, this.rightToLeft);
                        break;
                    case 29:
                        this.rightToRight = ConstraintSet.m2158p(obtainStyledAttributes, index, this.rightToRight);
                        break;
                    case 30:
                        this.startMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.startMargin);
                        break;
                    case 31:
                        this.startToEnd = ConstraintSet.m2158p(obtainStyledAttributes, index, this.startToEnd);
                        break;
                    case 32:
                        this.startToStart = ConstraintSet.m2158p(obtainStyledAttributes, index, this.startToStart);
                        break;
                    case 33:
                        this.topMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.topMargin);
                        break;
                    case 34:
                        this.topToBottom = ConstraintSet.m2158p(obtainStyledAttributes, index, this.topToBottom);
                        break;
                    case 35:
                        this.topToTop = ConstraintSet.m2158p(obtainStyledAttributes, index, this.topToTop);
                        break;
                    case 36:
                        this.verticalBias = obtainStyledAttributes.getFloat(index, this.verticalBias);
                        break;
                    case 37:
                        this.horizontalWeight = obtainStyledAttributes.getFloat(index, this.horizontalWeight);
                        break;
                    case 38:
                        this.verticalWeight = obtainStyledAttributes.getFloat(index, this.verticalWeight);
                        break;
                    case 39:
                        this.horizontalChainStyle = obtainStyledAttributes.getInt(index, this.horizontalChainStyle);
                        break;
                    case 40:
                        this.verticalChainStyle = obtainStyledAttributes.getInt(index, this.verticalChainStyle);
                        break;
                    case 41:
                        ConstraintSet.m2159q(this, obtainStyledAttributes, index, 0);
                        break;
                    case 42:
                        ConstraintSet.m2159q(this, obtainStyledAttributes, index, 1);
                        break;
                    default:
                        switch (i2) {
                            case 61:
                                this.circleConstraint = ConstraintSet.m2158p(obtainStyledAttributes, index, this.circleConstraint);
                                break;
                            case 62:
                                this.circleRadius = obtainStyledAttributes.getDimensionPixelSize(index, this.circleRadius);
                                break;
                            case 63:
                                this.circleAngle = obtainStyledAttributes.getFloat(index, this.circleAngle);
                                break;
                            default:
                                switch (i2) {
                                    case 69:
                                        this.widthPercent = obtainStyledAttributes.getFloat(index, 1.0f);
                                        break;
                                    case 70:
                                        this.heightPercent = obtainStyledAttributes.getFloat(index, 1.0f);
                                        break;
                                    case 71:
                                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                        break;
                                    case 72:
                                        this.mBarrierDirection = obtainStyledAttributes.getInt(index, this.mBarrierDirection);
                                        break;
                                    case 73:
                                        this.mBarrierMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.mBarrierMargin);
                                        break;
                                    case 74:
                                        this.mReferenceIdString = obtainStyledAttributes.getString(index);
                                        break;
                                    case 75:
                                        this.mBarrierAllowsGoneWidgets = obtainStyledAttributes.getBoolean(index, this.mBarrierAllowsGoneWidgets);
                                        break;
                                    case 76:
                                        this.mWrapBehavior = obtainStyledAttributes.getInt(index, this.mWrapBehavior);
                                        break;
                                    case 77:
                                        this.baselineToTop = ConstraintSet.m2158p(obtainStyledAttributes, index, this.baselineToTop);
                                        break;
                                    case 78:
                                        this.baselineToBottom = ConstraintSet.m2158p(obtainStyledAttributes, index, this.baselineToBottom);
                                        break;
                                    case 79:
                                        this.goneBaselineMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneBaselineMargin);
                                        break;
                                    case 80:
                                        this.baselineMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.baselineMargin);
                                        break;
                                    case 81:
                                        this.widthDefault = obtainStyledAttributes.getInt(index, this.widthDefault);
                                        break;
                                    case 82:
                                        this.heightDefault = obtainStyledAttributes.getInt(index, this.heightDefault);
                                        break;
                                    case 83:
                                        this.heightMax = obtainStyledAttributes.getDimensionPixelSize(index, this.heightMax);
                                        break;
                                    case 84:
                                        this.widthMax = obtainStyledAttributes.getDimensionPixelSize(index, this.widthMax);
                                        break;
                                    case 85:
                                        this.heightMin = obtainStyledAttributes.getDimensionPixelSize(index, this.heightMin);
                                        break;
                                    case 86:
                                        this.widthMin = obtainStyledAttributes.getDimensionPixelSize(index, this.widthMin);
                                        break;
                                    case 87:
                                        this.constrainedWidth = obtainStyledAttributes.getBoolean(index, this.constrainedWidth);
                                        break;
                                    case 88:
                                        this.constrainedHeight = obtainStyledAttributes.getBoolean(index, this.constrainedHeight);
                                        break;
                                    case 89:
                                        this.mConstraintTag = obtainStyledAttributes.getString(index);
                                        break;
                                    case 90:
                                        this.guidelineUseRtl = obtainStyledAttributes.getBoolean(index, this.guidelineUseRtl);
                                        break;
                                    case 91:
                                        Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f4562a.get(index));
                                        break;
                                    default:
                                        Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f4562a.get(index));
                                        break;
                                }
                        }
                }
            }
            obtainStyledAttributes.recycle();
        }

        public void copyFrom(Layout src) {
            this.mIsGuideline = src.mIsGuideline;
            this.mWidth = src.mWidth;
            this.mApply = src.mApply;
            this.mHeight = src.mHeight;
            this.guideBegin = src.guideBegin;
            this.guideEnd = src.guideEnd;
            this.guidePercent = src.guidePercent;
            this.guidelineUseRtl = src.guidelineUseRtl;
            this.leftToLeft = src.leftToLeft;
            this.leftToRight = src.leftToRight;
            this.rightToLeft = src.rightToLeft;
            this.rightToRight = src.rightToRight;
            this.topToTop = src.topToTop;
            this.topToBottom = src.topToBottom;
            this.bottomToTop = src.bottomToTop;
            this.bottomToBottom = src.bottomToBottom;
            this.baselineToBaseline = src.baselineToBaseline;
            this.baselineToTop = src.baselineToTop;
            this.baselineToBottom = src.baselineToBottom;
            this.startToEnd = src.startToEnd;
            this.startToStart = src.startToStart;
            this.endToStart = src.endToStart;
            this.endToEnd = src.endToEnd;
            this.horizontalBias = src.horizontalBias;
            this.verticalBias = src.verticalBias;
            this.dimensionRatio = src.dimensionRatio;
            this.circleConstraint = src.circleConstraint;
            this.circleRadius = src.circleRadius;
            this.circleAngle = src.circleAngle;
            this.editorAbsoluteX = src.editorAbsoluteX;
            this.editorAbsoluteY = src.editorAbsoluteY;
            this.orientation = src.orientation;
            this.leftMargin = src.leftMargin;
            this.rightMargin = src.rightMargin;
            this.topMargin = src.topMargin;
            this.bottomMargin = src.bottomMargin;
            this.endMargin = src.endMargin;
            this.startMargin = src.startMargin;
            this.baselineMargin = src.baselineMargin;
            this.goneLeftMargin = src.goneLeftMargin;
            this.goneTopMargin = src.goneTopMargin;
            this.goneRightMargin = src.goneRightMargin;
            this.goneBottomMargin = src.goneBottomMargin;
            this.goneEndMargin = src.goneEndMargin;
            this.goneStartMargin = src.goneStartMargin;
            this.goneBaselineMargin = src.goneBaselineMargin;
            this.verticalWeight = src.verticalWeight;
            this.horizontalWeight = src.horizontalWeight;
            this.horizontalChainStyle = src.horizontalChainStyle;
            this.verticalChainStyle = src.verticalChainStyle;
            this.widthDefault = src.widthDefault;
            this.heightDefault = src.heightDefault;
            this.widthMax = src.widthMax;
            this.heightMax = src.heightMax;
            this.widthMin = src.widthMin;
            this.heightMin = src.heightMin;
            this.widthPercent = src.widthPercent;
            this.heightPercent = src.heightPercent;
            this.mBarrierDirection = src.mBarrierDirection;
            this.mBarrierMargin = src.mBarrierMargin;
            this.mHelperType = src.mHelperType;
            this.mConstraintTag = src.mConstraintTag;
            int[] iArr = src.mReferenceIds;
            if (iArr == null || src.mReferenceIdString != null) {
                this.mReferenceIds = null;
            } else {
                this.mReferenceIds = Arrays.copyOf(iArr, iArr.length);
            }
            this.mReferenceIdString = src.mReferenceIdString;
            this.constrainedWidth = src.constrainedWidth;
            this.constrainedHeight = src.constrainedHeight;
            this.mBarrierAllowsGoneWidgets = src.mBarrierAllowsGoneWidgets;
            this.mWrapBehavior = src.mWrapBehavior;
        }

        public void dump(MotionScene motionScene, StringBuilder sb) {
            Field[] declaredFields = getClass().getDeclaredFields();
            sb.append("\n");
            for (Field field : declaredFields) {
                String name = field.getName();
                if (!Modifier.isStatic(field.getModifiers())) {
                    try {
                        Object obj = field.get(this);
                        Class<?> type = field.getType();
                        if (type == Integer.TYPE) {
                            Integer num = (Integer) obj;
                            if (num.intValue() != -1) {
                                Object lookUpConstraintName = motionScene.lookUpConstraintName(num.intValue());
                                sb.append(MapUtils.f104930a);
                                sb.append(name);
                                sb.append(" = \"");
                                sb.append(lookUpConstraintName == null ? num : lookUpConstraintName);
                                sb.append("\"\n");
                            }
                        } else if (type == Float.TYPE) {
                            Float f = (Float) obj;
                            if (f.floatValue() != -1.0f) {
                                sb.append(MapUtils.f104930a);
                                sb.append(name);
                                sb.append(" = \"");
                                sb.append(f);
                                sb.append("\"\n");
                            }
                        }
                    } catch (IllegalAccessException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class Motion {

        /* renamed from: a */
        public static final int f4605a = -2;

        /* renamed from: b */
        public static final int f4606b = -1;

        /* renamed from: c */
        public static final int f4607c = -3;

        /* renamed from: d */
        public static SparseIntArray f4608d = null;

        /* renamed from: e */
        public static final int f4609e = 1;

        /* renamed from: f */
        public static final int f4610f = 2;

        /* renamed from: g */
        public static final int f4611g = 3;

        /* renamed from: h */
        public static final int f4612h = 4;

        /* renamed from: i */
        public static final int f4613i = 5;

        /* renamed from: j */
        public static final int f4614j = 6;

        /* renamed from: k */
        public static final int f4615k = 7;

        /* renamed from: l */
        public static final int f4616l = 8;

        /* renamed from: m */
        public static final int f4617m = 9;

        /* renamed from: n */
        public static final int f4618n = 10;
        public boolean mApply = false;
        public int mAnimateRelativeTo = -1;
        public int mAnimateCircleAngleTo = 0;
        public String mTransitionEasing = null;
        public int mPathMotionArc = -1;
        public int mDrawPath = 0;
        public float mMotionStagger = Float.NaN;
        public int mPolarRelativeTo = -1;
        public float mPathRotate = Float.NaN;
        public float mQuantizeMotionPhase = Float.NaN;
        public int mQuantizeMotionSteps = -1;
        public String mQuantizeInterpolatorString = null;
        public int mQuantizeInterpolatorType = -3;
        public int mQuantizeInterpolatorID = -1;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f4608d = sparseIntArray;
            sparseIntArray.append(C0503R.styleable.Motion_motionPathRotate, 1);
            f4608d.append(C0503R.styleable.Motion_pathMotionArc, 2);
            f4608d.append(C0503R.styleable.Motion_transitionEasing, 3);
            f4608d.append(C0503R.styleable.Motion_drawPath, 4);
            f4608d.append(C0503R.styleable.Motion_animateRelativeTo, 5);
            f4608d.append(C0503R.styleable.Motion_animateCircleAngleTo, 6);
            f4608d.append(C0503R.styleable.Motion_motionStagger, 7);
            f4608d.append(C0503R.styleable.Motion_quantizeMotionSteps, 8);
            f4608d.append(C0503R.styleable.Motion_quantizeMotionPhase, 9);
            f4608d.append(C0503R.styleable.Motion_quantizeMotionInterpolator, 10);
        }

        /* renamed from: a */
        public void m2197a(Context context, AttributeSet attrs) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, C0503R.styleable.Motion);
            this.mApply = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (f4608d.get(index)) {
                    case 1:
                        this.mPathRotate = obtainStyledAttributes.getFloat(index, this.mPathRotate);
                        break;
                    case 2:
                        this.mPathMotionArc = obtainStyledAttributes.getInt(index, this.mPathMotionArc);
                        break;
                    case 3:
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            this.mTransitionEasing = obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            this.mTransitionEasing = Easing.NAMED_EASING[obtainStyledAttributes.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        this.mDrawPath = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.mAnimateRelativeTo = ConstraintSet.m2158p(obtainStyledAttributes, index, this.mAnimateRelativeTo);
                        break;
                    case 6:
                        this.mAnimateCircleAngleTo = obtainStyledAttributes.getInteger(index, this.mAnimateCircleAngleTo);
                        break;
                    case 7:
                        this.mMotionStagger = obtainStyledAttributes.getFloat(index, this.mMotionStagger);
                        break;
                    case 8:
                        this.mQuantizeMotionSteps = obtainStyledAttributes.getInteger(index, this.mQuantizeMotionSteps);
                        break;
                    case 9:
                        this.mQuantizeMotionPhase = obtainStyledAttributes.getFloat(index, this.mQuantizeMotionPhase);
                        break;
                    case 10:
                        int i2 = obtainStyledAttributes.peekValue(index).type;
                        if (i2 == 1) {
                            int resourceId = obtainStyledAttributes.getResourceId(index, -1);
                            this.mQuantizeInterpolatorID = resourceId;
                            if (resourceId != -1) {
                                this.mQuantizeInterpolatorType = -2;
                                break;
                            } else {
                                break;
                            }
                        } else if (i2 == 3) {
                            String string = obtainStyledAttributes.getString(index);
                            this.mQuantizeInterpolatorString = string;
                            if (string.indexOf("/") > 0) {
                                this.mQuantizeInterpolatorID = obtainStyledAttributes.getResourceId(index, -1);
                                this.mQuantizeInterpolatorType = -2;
                                break;
                            } else {
                                this.mQuantizeInterpolatorType = -1;
                                break;
                            }
                        } else {
                            this.mQuantizeInterpolatorType = obtainStyledAttributes.getInteger(index, this.mQuantizeInterpolatorID);
                            break;
                        }
                }
            }
            obtainStyledAttributes.recycle();
        }

        public void copyFrom(Motion src) {
            this.mApply = src.mApply;
            this.mAnimateRelativeTo = src.mAnimateRelativeTo;
            this.mTransitionEasing = src.mTransitionEasing;
            this.mPathMotionArc = src.mPathMotionArc;
            this.mDrawPath = src.mDrawPath;
            this.mPathRotate = src.mPathRotate;
            this.mMotionStagger = src.mMotionStagger;
            this.mPolarRelativeTo = src.mPolarRelativeTo;
        }
    }

    /* loaded from: classes3.dex */
    public static class PropertySet {
        public boolean mApply = false;
        public int visibility = 0;
        public int mVisibilityMode = 0;
        public float alpha = 1.0f;
        public float mProgress = Float.NaN;

        /* renamed from: a */
        public void m2198a(Context context, AttributeSet attrs) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, C0503R.styleable.PropertySet);
            this.mApply = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0503R.styleable.PropertySet_android_alpha) {
                    this.alpha = obtainStyledAttributes.getFloat(index, this.alpha);
                } else if (index == C0503R.styleable.PropertySet_android_visibility) {
                    this.visibility = obtainStyledAttributes.getInt(index, this.visibility);
                    this.visibility = ConstraintSet.f4481l[this.visibility];
                } else if (index == C0503R.styleable.PropertySet_visibilityMode) {
                    this.mVisibilityMode = obtainStyledAttributes.getInt(index, this.mVisibilityMode);
                } else if (index == C0503R.styleable.PropertySet_motionProgress) {
                    this.mProgress = obtainStyledAttributes.getFloat(index, this.mProgress);
                }
            }
            obtainStyledAttributes.recycle();
        }

        public void copyFrom(PropertySet src) {
            this.mApply = src.mApply;
            this.visibility = src.visibility;
            this.alpha = src.alpha;
            this.mProgress = src.mProgress;
            this.mVisibilityMode = src.mVisibilityMode;
        }
    }

    /* loaded from: classes3.dex */
    public static class Transform {

        /* renamed from: a */
        public static SparseIntArray f4619a = null;

        /* renamed from: b */
        public static final int f4620b = 1;

        /* renamed from: c */
        public static final int f4621c = 2;

        /* renamed from: d */
        public static final int f4622d = 3;

        /* renamed from: e */
        public static final int f4623e = 4;

        /* renamed from: f */
        public static final int f4624f = 5;

        /* renamed from: g */
        public static final int f4625g = 6;

        /* renamed from: h */
        public static final int f4626h = 7;

        /* renamed from: i */
        public static final int f4627i = 8;

        /* renamed from: j */
        public static final int f4628j = 9;

        /* renamed from: k */
        public static final int f4629k = 10;

        /* renamed from: l */
        public static final int f4630l = 11;

        /* renamed from: m */
        public static final int f4631m = 12;
        public boolean mApply = false;
        public float rotation = 0.0f;
        public float rotationX = 0.0f;
        public float rotationY = 0.0f;
        public float scaleX = 1.0f;
        public float scaleY = 1.0f;
        public float transformPivotX = Float.NaN;
        public float transformPivotY = Float.NaN;
        public int transformPivotTarget = -1;
        public float translationX = 0.0f;
        public float translationY = 0.0f;
        public float translationZ = 0.0f;
        public boolean applyElevation = false;
        public float elevation = 0.0f;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f4619a = sparseIntArray;
            sparseIntArray.append(C0503R.styleable.Transform_android_rotation, 1);
            f4619a.append(C0503R.styleable.Transform_android_rotationX, 2);
            f4619a.append(C0503R.styleable.Transform_android_rotationY, 3);
            f4619a.append(C0503R.styleable.Transform_android_scaleX, 4);
            f4619a.append(C0503R.styleable.Transform_android_scaleY, 5);
            f4619a.append(C0503R.styleable.Transform_android_transformPivotX, 6);
            f4619a.append(C0503R.styleable.Transform_android_transformPivotY, 7);
            f4619a.append(C0503R.styleable.Transform_android_translationX, 8);
            f4619a.append(C0503R.styleable.Transform_android_translationY, 9);
            f4619a.append(C0503R.styleable.Transform_android_translationZ, 10);
            f4619a.append(C0503R.styleable.Transform_android_elevation, 11);
            f4619a.append(C0503R.styleable.Transform_transformPivotTarget, 12);
        }

        /* renamed from: a */
        public void m2199a(Context context, AttributeSet attrs) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, C0503R.styleable.Transform);
            this.mApply = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (f4619a.get(index)) {
                    case 1:
                        this.rotation = obtainStyledAttributes.getFloat(index, this.rotation);
                        break;
                    case 2:
                        this.rotationX = obtainStyledAttributes.getFloat(index, this.rotationX);
                        break;
                    case 3:
                        this.rotationY = obtainStyledAttributes.getFloat(index, this.rotationY);
                        break;
                    case 4:
                        this.scaleX = obtainStyledAttributes.getFloat(index, this.scaleX);
                        break;
                    case 5:
                        this.scaleY = obtainStyledAttributes.getFloat(index, this.scaleY);
                        break;
                    case 6:
                        this.transformPivotX = obtainStyledAttributes.getDimension(index, this.transformPivotX);
                        break;
                    case 7:
                        this.transformPivotY = obtainStyledAttributes.getDimension(index, this.transformPivotY);
                        break;
                    case 8:
                        this.translationX = obtainStyledAttributes.getDimension(index, this.translationX);
                        break;
                    case 9:
                        this.translationY = obtainStyledAttributes.getDimension(index, this.translationY);
                        break;
                    case 10:
                        this.translationZ = obtainStyledAttributes.getDimension(index, this.translationZ);
                        break;
                    case 11:
                        this.applyElevation = true;
                        this.elevation = obtainStyledAttributes.getDimension(index, this.elevation);
                        break;
                    case 12:
                        this.transformPivotTarget = ConstraintSet.m2158p(obtainStyledAttributes, index, this.transformPivotTarget);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
        }

        public void copyFrom(Transform src) {
            this.mApply = src.mApply;
            this.rotation = src.rotation;
            this.rotationX = src.rotationX;
            this.rotationY = src.rotationY;
            this.scaleX = src.scaleX;
            this.scaleY = src.scaleY;
            this.transformPivotX = src.transformPivotX;
            this.transformPivotY = src.transformPivotY;
            this.transformPivotTarget = src.transformPivotTarget;
            this.translationX = src.translationX;
            this.translationY = src.translationY;
            this.translationZ = src.translationZ;
            this.applyElevation = src.applyElevation;
            this.elevation = src.elevation;
        }
    }

    /* renamed from: androidx.constraintlayout.widget.ConstraintSet$a */
    /* loaded from: classes3.dex */
    public class C0501a {

        /* renamed from: o */
        public static final String f4632o = "       ";

        /* renamed from: a */
        public Writer f4633a;

        /* renamed from: b */
        public ConstraintLayout f4634b;

        /* renamed from: c */
        public Context f4635c;

        /* renamed from: d */
        public int f4636d;

        /* renamed from: e */
        public int f4637e = 0;

        /* renamed from: f */
        public final String f4638f = "'left'";

        /* renamed from: g */
        public final String f4639g = "'right'";

        /* renamed from: h */
        public final String f4640h = "'baseline'";

        /* renamed from: i */
        public final String f4641i = "'bottom'";

        /* renamed from: j */
        public final String f4642j = "'top'";

        /* renamed from: k */
        public final String f4643k = "'start'";

        /* renamed from: l */
        public final String f4644l = "'end'";

        /* renamed from: m */
        public HashMap<Integer, String> f4645m = new HashMap<>();

        public C0501a(Writer writer, ConstraintLayout layout, int flags) throws IOException {
            this.f4633a = writer;
            this.f4634b = layout;
            this.f4635c = layout.getContext();
            this.f4636d = flags;
        }

        /* renamed from: a */
        public String m2200a(int id) {
            if (this.f4645m.containsKey(Integer.valueOf(id))) {
                return CloudStorageConstants.SINGLE_QUOTES + this.f4645m.get(Integer.valueOf(id)) + CloudStorageConstants.SINGLE_QUOTES;
            }
            if (id == 0) {
                return "'parent'";
            }
            String m2201b = m2201b(id);
            this.f4645m.put(Integer.valueOf(id), m2201b);
            return CloudStorageConstants.SINGLE_QUOTES + m2201b + CloudStorageConstants.SINGLE_QUOTES;
        }

        /* renamed from: b */
        public String m2201b(int id) {
            try {
                if (id != -1) {
                    return this.f4635c.getResources().getResourceEntryName(id);
                }
                StringBuilder sb = new StringBuilder();
                sb.append("unknown");
                int i = this.f4637e + 1;
                this.f4637e = i;
                sb.append(i);
                return sb.toString();
            } catch (Exception unused) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("unknown");
                int i2 = this.f4637e + 1;
                this.f4637e = i2;
                sb2.append(i2);
                return sb2.toString();
            }
        }

        /* renamed from: c */
        public void m2202c(int circleConstraint, float circleAngle, int circleRadius) throws IOException {
            if (circleConstraint == -1) {
                return;
            }
            this.f4633a.write("       circle");
            this.f4633a.write(":[");
            this.f4633a.write(m2200a(circleConstraint));
            this.f4633a.write(", " + circleAngle);
            this.f4633a.write(circleRadius + IteratorUtils.f104924b);
        }

        /* renamed from: d */
        public void m2203d(String my, int leftToLeft, String other, int margin, int goneMargin) throws IOException {
            if (leftToLeft == -1) {
                return;
            }
            this.f4633a.write(f4632o + my);
            this.f4633a.write(":[");
            this.f4633a.write(m2200a(leftToLeft));
            this.f4633a.write(" , ");
            this.f4633a.write(other);
            if (margin != 0) {
                this.f4633a.write(" , " + margin);
            }
            this.f4633a.write("],\n");
        }

        /* renamed from: e */
        public final void m2204e(String dimString, int dim, int dimDefault, float dimPercent, int dimMin, int dimMax, boolean constrainedDim) throws IOException {
            if (dim != 0) {
                if (dim == -2) {
                    this.f4633a.write(f4632o + dimString + ": 'wrap'\n");
                    return;
                }
                if (dim == -1) {
                    this.f4633a.write(f4632o + dimString + ": 'parent'\n");
                    return;
                }
                this.f4633a.write(f4632o + dimString + ": " + dim + ",\n");
                return;
            }
            if (dimMax == -1 && dimMin == -1) {
                if (dimDefault == 1) {
                    this.f4633a.write(f4632o + dimString + ": '???????????',\n");
                    return;
                }
                if (dimDefault != 2) {
                    return;
                }
                this.f4633a.write(f4632o + dimString + ": '" + dimPercent + "%',\n");
                return;
            }
            if (dimDefault == 0) {
                this.f4633a.write(f4632o + dimString + ": {'spread' ," + dimMin + ", " + dimMax + "}\n");
                return;
            }
            if (dimDefault == 1) {
                this.f4633a.write(f4632o + dimString + ": {'wrap' ," + dimMin + ", " + dimMax + "}\n");
                return;
            }
            if (dimDefault != 2) {
                return;
            }
            this.f4633a.write(f4632o + dimString + ": {'" + dimPercent + "'% ," + dimMin + ", " + dimMax + "}\n");
        }

        /* renamed from: f */
        public final void m2205f(int orientation, int guideBegin, int guideEnd, float guidePercent) {
        }

        /* renamed from: g */
        public void m2206g() throws IOException {
            this.f4633a.write("\n'ConstraintSet':{\n");
            for (Integer num : ConstraintSet.this.f4516d.keySet()) {
                Constraint constraint = (Constraint) ConstraintSet.this.f4516d.get(num);
                String m2200a = m2200a(num.intValue());
                this.f4633a.write(m2200a + ":{\n");
                Layout layout = constraint.layout;
                m2204e("height", layout.mHeight, layout.heightDefault, layout.heightPercent, layout.heightMin, layout.heightMax, layout.constrainedHeight);
                m2204e("width", layout.mWidth, layout.widthDefault, layout.widthPercent, layout.widthMin, layout.widthMax, layout.constrainedWidth);
                m2203d("'left'", layout.leftToLeft, "'left'", layout.leftMargin, layout.goneLeftMargin);
                m2203d("'left'", layout.leftToRight, "'right'", layout.leftMargin, layout.goneLeftMargin);
                m2203d("'right'", layout.rightToLeft, "'left'", layout.rightMargin, layout.goneRightMargin);
                m2203d("'right'", layout.rightToRight, "'right'", layout.rightMargin, layout.goneRightMargin);
                m2203d("'baseline'", layout.baselineToBaseline, "'baseline'", -1, layout.goneBaselineMargin);
                m2203d("'baseline'", layout.baselineToTop, "'top'", -1, layout.goneBaselineMargin);
                m2203d("'baseline'", layout.baselineToBottom, "'bottom'", -1, layout.goneBaselineMargin);
                m2203d("'top'", layout.topToBottom, "'bottom'", layout.topMargin, layout.goneTopMargin);
                m2203d("'top'", layout.topToTop, "'top'", layout.topMargin, layout.goneTopMargin);
                m2203d("'bottom'", layout.bottomToBottom, "'bottom'", layout.bottomMargin, layout.goneBottomMargin);
                m2203d("'bottom'", layout.bottomToTop, "'top'", layout.bottomMargin, layout.goneBottomMargin);
                m2203d("'start'", layout.startToStart, "'start'", layout.startMargin, layout.goneStartMargin);
                m2203d("'start'", layout.startToEnd, "'end'", layout.startMargin, layout.goneStartMargin);
                m2203d("'end'", layout.endToStart, "'start'", layout.endMargin, layout.goneEndMargin);
                m2203d("'end'", layout.endToEnd, "'end'", layout.endMargin, layout.goneEndMargin);
                m2208i("'horizontalBias'", layout.horizontalBias, 0.5f);
                m2208i("'verticalBias'", layout.verticalBias, 0.5f);
                m2202c(layout.circleConstraint, layout.circleAngle, layout.circleRadius);
                m2205f(layout.orientation, layout.guideBegin, layout.guideEnd, layout.guidePercent);
                m2210k("'dimensionRatio'", layout.dimensionRatio);
                m2209j("'barrierMargin'", layout.mBarrierMargin);
                m2209j("'type'", layout.mHelperType);
                m2210k("'ReferenceId'", layout.mReferenceIdString);
                m2212m("'mBarrierAllowsGoneWidgets'", layout.mBarrierAllowsGoneWidgets, true);
                m2209j("'WrapBehavior'", layout.mWrapBehavior);
                m2207h("'verticalWeight'", layout.verticalWeight);
                m2207h("'horizontalWeight'", layout.horizontalWeight);
                m2209j("'horizontalChainStyle'", layout.horizontalChainStyle);
                m2209j("'verticalChainStyle'", layout.verticalChainStyle);
                m2209j("'barrierDirection'", layout.mBarrierDirection);
                int[] iArr = layout.mReferenceIds;
                if (iArr != null) {
                    m2213n("'ReferenceIds'", iArr);
                }
                this.f4633a.write("}\n");
            }
            this.f4633a.write("}\n");
        }

        /* renamed from: h */
        public void m2207h(String name, float value) throws IOException {
            if (value == -1.0f) {
                return;
            }
            this.f4633a.write(f4632o + name);
            this.f4633a.write(": " + value);
            this.f4633a.write(",\n");
        }

        /* renamed from: i */
        public void m2208i(String name, float value, float def) throws IOException {
            if (value == def) {
                return;
            }
            this.f4633a.write(f4632o + name);
            this.f4633a.write(": " + value);
            this.f4633a.write(",\n");
        }

        /* renamed from: j */
        public void m2209j(String name, int value) throws IOException {
            if (value == 0 || value == -1) {
                return;
            }
            this.f4633a.write(f4632o + name);
            this.f4633a.write(":");
            this.f4633a.write(", " + value);
            this.f4633a.write("\n");
        }

        /* renamed from: k */
        public void m2210k(String name, String value) throws IOException {
            if (value == null) {
                return;
            }
            this.f4633a.write(f4632o + name);
            this.f4633a.write(":");
            this.f4633a.write(", " + value);
            this.f4633a.write("\n");
        }

        /* renamed from: l */
        public void m2211l(String name, boolean value) throws IOException {
            if (value) {
                this.f4633a.write(f4632o + name);
                this.f4633a.write(": " + value);
                this.f4633a.write(",\n");
            }
        }

        /* renamed from: m */
        public void m2212m(String name, boolean value, boolean def) throws IOException {
            if (value == def) {
                return;
            }
            this.f4633a.write(f4632o + name);
            this.f4633a.write(": " + value);
            this.f4633a.write(",\n");
        }

        /* renamed from: n */
        public void m2213n(String name, int[] value) throws IOException {
            if (value == null) {
                return;
            }
            this.f4633a.write(f4632o + name);
            this.f4633a.write(": ");
            int i = 0;
            while (i < value.length) {
                Writer writer = this.f4633a;
                StringBuilder sb = new StringBuilder();
                sb.append(i == 0 ? IteratorUtils.f104923a : ", ");
                sb.append(m2200a(value[i]));
                writer.write(sb.toString());
                i++;
            }
            this.f4633a.write("],\n");
        }
    }

    /* renamed from: androidx.constraintlayout.widget.ConstraintSet$b */
    /* loaded from: classes3.dex */
    public class C0502b {

        /* renamed from: o */
        public static final String f4647o = "\n       ";

        /* renamed from: a */
        public Writer f4648a;

        /* renamed from: b */
        public ConstraintLayout f4649b;

        /* renamed from: c */
        public Context f4650c;

        /* renamed from: d */
        public int f4651d;

        /* renamed from: e */
        public int f4652e = 0;

        /* renamed from: f */
        public final String f4653f = "'left'";

        /* renamed from: g */
        public final String f4654g = "'right'";

        /* renamed from: h */
        public final String f4655h = "'baseline'";

        /* renamed from: i */
        public final String f4656i = "'bottom'";

        /* renamed from: j */
        public final String f4657j = "'top'";

        /* renamed from: k */
        public final String f4658k = "'start'";

        /* renamed from: l */
        public final String f4659l = "'end'";

        /* renamed from: m */
        public HashMap<Integer, String> f4660m = new HashMap<>();

        public C0502b(Writer writer, ConstraintLayout layout, int flags) throws IOException {
            this.f4648a = writer;
            this.f4649b = layout;
            this.f4650c = layout.getContext();
            this.f4651d = flags;
        }

        /* renamed from: a */
        public String m2214a(int id) {
            if (this.f4660m.containsKey(Integer.valueOf(id))) {
                return "@+id/" + this.f4660m.get(Integer.valueOf(id)) + "";
            }
            if (id == 0) {
                return "parent";
            }
            String m2215b = m2215b(id);
            this.f4660m.put(Integer.valueOf(id), m2215b);
            return "@+id/" + m2215b + "";
        }

        /* renamed from: b */
        public String m2215b(int id) {
            try {
                if (id != -1) {
                    return this.f4650c.getResources().getResourceEntryName(id);
                }
                StringBuilder sb = new StringBuilder();
                sb.append("unknown");
                int i = this.f4652e + 1;
                this.f4652e = i;
                sb.append(i);
                return sb.toString();
            } catch (Exception unused) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("unknown");
                int i2 = this.f4652e + 1;
                this.f4652e = i2;
                sb2.append(i2);
                return sb2.toString();
            }
        }

        /* renamed from: c */
        public final void m2216c(String dimString, int dim, int def) throws IOException {
            if (dim != def) {
                if (dim == -2) {
                    this.f4648a.write(f4647o + dimString + "=\"wrap_content\"");
                    return;
                }
                if (dim == -1) {
                    this.f4648a.write(f4647o + dimString + "=\"match_parent\"");
                    return;
                }
                this.f4648a.write(f4647o + dimString + "=\"" + dim + "dp\"");
            }
        }

        /* renamed from: d */
        public final void m2217d(String dimString, boolean val, boolean def) throws IOException {
            if (val != def) {
                this.f4648a.write(f4647o + dimString + "=\"" + val + "dp\"");
            }
        }

        /* renamed from: e */
        public void m2218e(int circleConstraint, float circleAngle, int circleRadius) throws IOException {
            if (circleConstraint == -1) {
                return;
            }
            this.f4648a.write("circle");
            this.f4648a.write(":[");
            this.f4648a.write(m2214a(circleConstraint));
            this.f4648a.write(", " + circleAngle);
            this.f4648a.write(circleRadius + IteratorUtils.f104924b);
        }

        /* renamed from: f */
        public void m2219f(String my, int leftToLeft, String other, int margin, int goneMargin) throws IOException {
            if (leftToLeft == -1) {
                return;
            }
            this.f4648a.write(f4647o + my);
            this.f4648a.write(":[");
            this.f4648a.write(m2214a(leftToLeft));
            this.f4648a.write(" , ");
            this.f4648a.write(other);
            if (margin != 0) {
                this.f4648a.write(" , " + margin);
            }
            this.f4648a.write("],\n");
        }

        /* renamed from: g */
        public final void m2220g(String dimString, int dim, int def) throws IOException {
            if (dim != def) {
                this.f4648a.write(f4647o + dimString + "=\"" + dim + "dp\"");
            }
        }

        /* renamed from: h */
        public final void m2221h(String dimString, int val, String[] types, int def) throws IOException {
            if (val != def) {
                this.f4648a.write(f4647o + dimString + "=\"" + types[val] + "\"");
            }
        }

        /* renamed from: i */
        public void m2222i() throws IOException {
            this.f4648a.write("\n<ConstraintSet>\n");
            for (Integer num : ConstraintSet.this.f4516d.keySet()) {
                Constraint constraint = (Constraint) ConstraintSet.this.f4516d.get(num);
                String m2214a = m2214a(num.intValue());
                this.f4648a.write("  <Constraint");
                this.f4648a.write("\n       android:id=\"" + m2214a + "\"");
                Layout layout = constraint.layout;
                m2216c("android:layout_width", layout.mWidth, -5);
                m2216c("android:layout_height", layout.mHeight, -5);
                m2223j("app:layout_constraintGuide_begin", (float) layout.guideBegin, -1.0f);
                m2223j("app:layout_constraintGuide_end", layout.guideEnd, -1.0f);
                m2223j("app:layout_constraintGuide_percent", layout.guidePercent, -1.0f);
                m2223j("app:layout_constraintHorizontal_bias", layout.horizontalBias, 0.5f);
                m2223j("app:layout_constraintVertical_bias", layout.verticalBias, 0.5f);
                m2226m("app:layout_constraintDimensionRatio", layout.dimensionRatio, null);
                m2228o("app:layout_constraintCircle", layout.circleConstraint);
                m2223j("app:layout_constraintCircleRadius", layout.circleRadius, 0.0f);
                m2223j("app:layout_constraintCircleAngle", layout.circleAngle, 0.0f);
                m2223j("android:orientation", layout.orientation, -1.0f);
                m2223j("app:layout_constraintVertical_weight", layout.verticalWeight, -1.0f);
                m2223j("app:layout_constraintHorizontal_weight", layout.horizontalWeight, -1.0f);
                m2223j("app:layout_constraintHorizontal_chainStyle", layout.horizontalChainStyle, 0.0f);
                m2223j("app:layout_constraintVertical_chainStyle", layout.verticalChainStyle, 0.0f);
                m2223j("app:barrierDirection", layout.mBarrierDirection, -1.0f);
                m2223j("app:barrierMargin", layout.mBarrierMargin, 0.0f);
                m2220g("app:layout_marginLeft", layout.leftMargin, 0);
                m2220g("app:layout_goneMarginLeft", layout.goneLeftMargin, Integer.MIN_VALUE);
                m2220g("app:layout_marginRight", layout.rightMargin, 0);
                m2220g("app:layout_goneMarginRight", layout.goneRightMargin, Integer.MIN_VALUE);
                m2220g("app:layout_marginStart", layout.startMargin, 0);
                m2220g("app:layout_goneMarginStart", layout.goneStartMargin, Integer.MIN_VALUE);
                m2220g("app:layout_marginEnd", layout.endMargin, 0);
                m2220g("app:layout_goneMarginEnd", layout.goneEndMargin, Integer.MIN_VALUE);
                m2220g("app:layout_marginTop", layout.topMargin, 0);
                m2220g("app:layout_goneMarginTop", layout.goneTopMargin, Integer.MIN_VALUE);
                m2220g("app:layout_marginBottom", layout.bottomMargin, 0);
                m2220g("app:layout_goneMarginBottom", layout.goneBottomMargin, Integer.MIN_VALUE);
                m2220g("app:goneBaselineMargin", layout.goneBaselineMargin, Integer.MIN_VALUE);
                m2220g("app:baselineMargin", layout.baselineMargin, 0);
                m2217d("app:layout_constrainedWidth", layout.constrainedWidth, false);
                m2217d("app:layout_constrainedHeight", layout.constrainedHeight, false);
                m2217d("app:barrierAllowsGoneWidgets", layout.mBarrierAllowsGoneWidgets, true);
                m2223j("app:layout_wrapBehaviorInParent", layout.mWrapBehavior, 0.0f);
                m2228o("app:baselineToBaseline", layout.baselineToBaseline);
                m2228o("app:baselineToBottom", layout.baselineToBottom);
                m2228o("app:baselineToTop", layout.baselineToTop);
                m2228o("app:layout_constraintBottom_toBottomOf", layout.bottomToBottom);
                m2228o("app:layout_constraintBottom_toTopOf", layout.bottomToTop);
                m2228o("app:layout_constraintEnd_toEndOf", layout.endToEnd);
                m2228o("app:layout_constraintEnd_toStartOf", layout.endToStart);
                m2228o("app:layout_constraintLeft_toLeftOf", layout.leftToLeft);
                m2228o("app:layout_constraintLeft_toRightOf", layout.leftToRight);
                m2228o("app:layout_constraintRight_toLeftOf", layout.rightToLeft);
                m2228o("app:layout_constraintRight_toRightOf", layout.rightToRight);
                m2228o("app:layout_constraintStart_toEndOf", layout.startToEnd);
                m2228o("app:layout_constraintStart_toStartOf", layout.startToStart);
                m2228o("app:layout_constraintTop_toBottomOf", layout.topToBottom);
                m2228o("app:layout_constraintTop_toTopOf", layout.topToTop);
                String[] strArr = {"spread", "wrap", Constants.ATTRNAME_PERCENT};
                m2221h("app:layout_constraintHeight_default", layout.heightDefault, strArr, 0);
                m2223j("app:layout_constraintHeight_percent", layout.heightPercent, 1.0f);
                m2220g("app:layout_constraintHeight_min", layout.heightMin, 0);
                m2220g("app:layout_constraintHeight_max", layout.heightMax, 0);
                m2217d("android:layout_constrainedHeight", layout.constrainedHeight, false);
                m2221h("app:layout_constraintWidth_default", layout.widthDefault, strArr, 0);
                m2223j("app:layout_constraintWidth_percent", layout.widthPercent, 1.0f);
                m2220g("app:layout_constraintWidth_min", layout.widthMin, 0);
                m2220g("app:layout_constraintWidth_max", layout.widthMax, 0);
                m2217d("android:layout_constrainedWidth", layout.constrainedWidth, false);
                m2223j("app:layout_constraintVertical_weight", layout.verticalWeight, -1.0f);
                m2223j("app:layout_constraintHorizontal_weight", layout.horizontalWeight, -1.0f);
                m2224k("app:layout_constraintHorizontal_chainStyle", layout.horizontalChainStyle);
                m2224k("app:layout_constraintVertical_chainStyle", layout.verticalChainStyle);
                m2221h("app:barrierDirection", layout.mBarrierDirection, new String[]{"left", gon.f71288n0, OneDriverConstants.TOP, "bottom", gon.f71290o0, "end"}, -1);
                m2226m("app:layout_constraintTag", layout.mConstraintTag, null);
                int[] iArr = layout.mReferenceIds;
                if (iArr != null) {
                    m2227n("'ReferenceIds'", iArr);
                }
                this.f4648a.write(" />\n");
            }
            this.f4648a.write("</ConstraintSet>\n");
        }

        /* renamed from: j */
        public void m2223j(String name, float value, float def) throws IOException {
            if (value == def) {
                return;
            }
            this.f4648a.write(f4647o + name);
            this.f4648a.write("=\"" + value + "\"");
        }

        /* renamed from: k */
        public void m2224k(String name, int value) throws IOException {
            if (value == 0 || value == -1) {
                return;
            }
            this.f4648a.write(f4647o + name + "=\"" + value + "\"\n");
        }

        /* renamed from: l */
        public void m2225l(String name, String value) throws IOException {
            if (value == null) {
                return;
            }
            this.f4648a.write(name);
            this.f4648a.write(":");
            this.f4648a.write(", " + value);
            this.f4648a.write("\n");
        }

        /* renamed from: m */
        public void m2226m(String name, String value, String def) throws IOException {
            if (value == null || value.equals(def)) {
                return;
            }
            this.f4648a.write(f4647o + name);
            this.f4648a.write("=\"" + value + "\"");
        }

        /* renamed from: n */
        public void m2227n(String name, int[] value) throws IOException {
            if (value == null) {
                return;
            }
            this.f4648a.write(f4647o + name);
            this.f4648a.write(":");
            int i = 0;
            while (i < value.length) {
                Writer writer = this.f4648a;
                StringBuilder sb = new StringBuilder();
                sb.append(i == 0 ? IteratorUtils.f104923a : ", ");
                sb.append(m2214a(value[i]));
                writer.write(sb.toString());
                i++;
            }
            this.f4648a.write("],\n");
        }

        /* renamed from: o */
        public void m2228o(String str, int leftToLeft) throws IOException {
            if (leftToLeft == -1) {
                return;
            }
            this.f4648a.write(f4647o + str);
            this.f4648a.write("=\"" + m2214a(leftToLeft) + "\"");
        }
    }

    static {
        f4487n.append(C0503R.styleable.Constraint_layout_constraintLeft_toLeftOf, 25);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintLeft_toRightOf, 26);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintRight_toLeftOf, 29);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintRight_toRightOf, 30);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintTop_toTopOf, 36);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintTop_toBottomOf, 35);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintBottom_toTopOf, 4);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintBottom_toBottomOf, 3);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintBaseline_toTopOf, 91);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintBaseline_toBottomOf, 92);
        f4487n.append(C0503R.styleable.Constraint_layout_editor_absoluteX, 6);
        f4487n.append(C0503R.styleable.Constraint_layout_editor_absoluteY, 7);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintGuide_begin, 17);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintGuide_end, 18);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintGuide_percent, 19);
        f4487n.append(C0503R.styleable.Constraint_guidelineUseRtl, 99);
        f4487n.append(C0503R.styleable.Constraint_android_orientation, 27);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintStart_toEndOf, 32);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintStart_toStartOf, 33);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintEnd_toStartOf, 10);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintEnd_toEndOf, 9);
        f4487n.append(C0503R.styleable.Constraint_layout_goneMarginLeft, 13);
        f4487n.append(C0503R.styleable.Constraint_layout_goneMarginTop, 16);
        f4487n.append(C0503R.styleable.Constraint_layout_goneMarginRight, 14);
        f4487n.append(C0503R.styleable.Constraint_layout_goneMarginBottom, 11);
        f4487n.append(C0503R.styleable.Constraint_layout_goneMarginStart, 15);
        f4487n.append(C0503R.styleable.Constraint_layout_goneMarginEnd, 12);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintVertical_weight, 40);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintHorizontal_weight, 39);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintHorizontal_chainStyle, 41);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintVertical_chainStyle, 42);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintHorizontal_bias, 20);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintVertical_bias, 37);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintDimensionRatio, 5);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintLeft_creator, 87);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintTop_creator, 87);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintRight_creator, 87);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintBottom_creator, 87);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintBaseline_creator, 87);
        f4487n.append(C0503R.styleable.Constraint_android_layout_marginLeft, 24);
        f4487n.append(C0503R.styleable.Constraint_android_layout_marginRight, 28);
        f4487n.append(C0503R.styleable.Constraint_android_layout_marginStart, 31);
        f4487n.append(C0503R.styleable.Constraint_android_layout_marginEnd, 8);
        f4487n.append(C0503R.styleable.Constraint_android_layout_marginTop, 34);
        f4487n.append(C0503R.styleable.Constraint_android_layout_marginBottom, 2);
        f4487n.append(C0503R.styleable.Constraint_android_layout_width, 23);
        f4487n.append(C0503R.styleable.Constraint_android_layout_height, 21);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintWidth, 95);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintHeight, 96);
        f4487n.append(C0503R.styleable.Constraint_android_visibility, 22);
        f4487n.append(C0503R.styleable.Constraint_android_alpha, 43);
        f4487n.append(C0503R.styleable.Constraint_android_elevation, 44);
        f4487n.append(C0503R.styleable.Constraint_android_rotationX, 45);
        f4487n.append(C0503R.styleable.Constraint_android_rotationY, 46);
        f4487n.append(C0503R.styleable.Constraint_android_rotation, 60);
        f4487n.append(C0503R.styleable.Constraint_android_scaleX, 47);
        f4487n.append(C0503R.styleable.Constraint_android_scaleY, 48);
        f4487n.append(C0503R.styleable.Constraint_android_transformPivotX, 49);
        f4487n.append(C0503R.styleable.Constraint_android_transformPivotY, 50);
        f4487n.append(C0503R.styleable.Constraint_android_translationX, 51);
        f4487n.append(C0503R.styleable.Constraint_android_translationY, 52);
        f4487n.append(C0503R.styleable.Constraint_android_translationZ, 53);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintWidth_default, 54);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintHeight_default, 55);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintWidth_max, 56);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintHeight_max, 57);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintWidth_min, 58);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintHeight_min, 59);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintCircle, 61);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintCircleRadius, 62);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintCircleAngle, 63);
        f4487n.append(C0503R.styleable.Constraint_animateRelativeTo, 64);
        f4487n.append(C0503R.styleable.Constraint_transitionEasing, 65);
        f4487n.append(C0503R.styleable.Constraint_drawPath, 66);
        f4487n.append(C0503R.styleable.Constraint_transitionPathRotate, 67);
        f4487n.append(C0503R.styleable.Constraint_motionStagger, 79);
        f4487n.append(C0503R.styleable.Constraint_android_id, 38);
        f4487n.append(C0503R.styleable.Constraint_motionProgress, 68);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintWidth_percent, 69);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintHeight_percent, 70);
        f4487n.append(C0503R.styleable.Constraint_layout_wrapBehaviorInParent, 97);
        f4487n.append(C0503R.styleable.Constraint_chainUseRtl, 71);
        f4487n.append(C0503R.styleable.Constraint_barrierDirection, 72);
        f4487n.append(C0503R.styleable.Constraint_barrierMargin, 73);
        f4487n.append(C0503R.styleable.Constraint_constraint_referenced_ids, 74);
        f4487n.append(C0503R.styleable.Constraint_barrierAllowsGoneWidgets, 75);
        f4487n.append(C0503R.styleable.Constraint_pathMotionArc, 76);
        f4487n.append(C0503R.styleable.Constraint_layout_constraintTag, 77);
        f4487n.append(C0503R.styleable.Constraint_visibilityMode, 78);
        f4487n.append(C0503R.styleable.Constraint_layout_constrainedWidth, 80);
        f4487n.append(C0503R.styleable.Constraint_layout_constrainedHeight, 81);
        f4487n.append(C0503R.styleable.Constraint_polarRelativeTo, 82);
        f4487n.append(C0503R.styleable.Constraint_transformPivotTarget, 83);
        f4487n.append(C0503R.styleable.Constraint_quantizeMotionSteps, 84);
        f4487n.append(C0503R.styleable.Constraint_quantizeMotionPhase, 85);
        f4487n.append(C0503R.styleable.Constraint_quantizeMotionInterpolator, 86);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_editor_absoluteY, 6);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_editor_absoluteY, 7);
        f4489o.append(C0503R.styleable.ConstraintOverride_android_orientation, 27);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_goneMarginLeft, 13);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_goneMarginTop, 16);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_goneMarginRight, 14);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_goneMarginBottom, 11);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_goneMarginStart, 15);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_goneMarginEnd, 12);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintVertical_weight, 40);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintHorizontal_weight, 39);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintHorizontal_chainStyle, 41);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintVertical_chainStyle, 42);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintHorizontal_bias, 20);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintVertical_bias, 37);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintDimensionRatio, 5);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintLeft_creator, 87);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintTop_creator, 87);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintRight_creator, 87);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintBottom_creator, 87);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintBaseline_creator, 87);
        f4489o.append(C0503R.styleable.ConstraintOverride_android_layout_marginLeft, 24);
        f4489o.append(C0503R.styleable.ConstraintOverride_android_layout_marginRight, 28);
        f4489o.append(C0503R.styleable.ConstraintOverride_android_layout_marginStart, 31);
        f4489o.append(C0503R.styleable.ConstraintOverride_android_layout_marginEnd, 8);
        f4489o.append(C0503R.styleable.ConstraintOverride_android_layout_marginTop, 34);
        f4489o.append(C0503R.styleable.ConstraintOverride_android_layout_marginBottom, 2);
        f4489o.append(C0503R.styleable.ConstraintOverride_android_layout_width, 23);
        f4489o.append(C0503R.styleable.ConstraintOverride_android_layout_height, 21);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintWidth, 95);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintHeight, 96);
        f4489o.append(C0503R.styleable.ConstraintOverride_android_visibility, 22);
        f4489o.append(C0503R.styleable.ConstraintOverride_android_alpha, 43);
        f4489o.append(C0503R.styleable.ConstraintOverride_android_elevation, 44);
        f4489o.append(C0503R.styleable.ConstraintOverride_android_rotationX, 45);
        f4489o.append(C0503R.styleable.ConstraintOverride_android_rotationY, 46);
        f4489o.append(C0503R.styleable.ConstraintOverride_android_rotation, 60);
        f4489o.append(C0503R.styleable.ConstraintOverride_android_scaleX, 47);
        f4489o.append(C0503R.styleable.ConstraintOverride_android_scaleY, 48);
        f4489o.append(C0503R.styleable.ConstraintOverride_android_transformPivotX, 49);
        f4489o.append(C0503R.styleable.ConstraintOverride_android_transformPivotY, 50);
        f4489o.append(C0503R.styleable.ConstraintOverride_android_translationX, 51);
        f4489o.append(C0503R.styleable.ConstraintOverride_android_translationY, 52);
        f4489o.append(C0503R.styleable.ConstraintOverride_android_translationZ, 53);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintWidth_default, 54);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintHeight_default, 55);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintWidth_max, 56);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintHeight_max, 57);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintWidth_min, 58);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintHeight_min, 59);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintCircleRadius, 62);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintCircleAngle, 63);
        f4489o.append(C0503R.styleable.ConstraintOverride_animateRelativeTo, 64);
        f4489o.append(C0503R.styleable.ConstraintOverride_transitionEasing, 65);
        f4489o.append(C0503R.styleable.ConstraintOverride_drawPath, 66);
        f4489o.append(C0503R.styleable.ConstraintOverride_transitionPathRotate, 67);
        f4489o.append(C0503R.styleable.ConstraintOverride_motionStagger, 79);
        f4489o.append(C0503R.styleable.ConstraintOverride_android_id, 38);
        f4489o.append(C0503R.styleable.ConstraintOverride_motionTarget, 98);
        f4489o.append(C0503R.styleable.ConstraintOverride_motionProgress, 68);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintWidth_percent, 69);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintHeight_percent, 70);
        f4489o.append(C0503R.styleable.ConstraintOverride_chainUseRtl, 71);
        f4489o.append(C0503R.styleable.ConstraintOverride_barrierDirection, 72);
        f4489o.append(C0503R.styleable.ConstraintOverride_barrierMargin, 73);
        f4489o.append(C0503R.styleable.ConstraintOverride_constraint_referenced_ids, 74);
        f4489o.append(C0503R.styleable.ConstraintOverride_barrierAllowsGoneWidgets, 75);
        f4489o.append(C0503R.styleable.ConstraintOverride_pathMotionArc, 76);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constraintTag, 77);
        f4489o.append(C0503R.styleable.ConstraintOverride_visibilityMode, 78);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constrainedWidth, 80);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_constrainedHeight, 81);
        f4489o.append(C0503R.styleable.ConstraintOverride_polarRelativeTo, 82);
        f4489o.append(C0503R.styleable.ConstraintOverride_transformPivotTarget, 83);
        f4489o.append(C0503R.styleable.ConstraintOverride_quantizeMotionSteps, 84);
        f4489o.append(C0503R.styleable.ConstraintOverride_quantizeMotionPhase, 85);
        f4489o.append(C0503R.styleable.ConstraintOverride_quantizeMotionInterpolator, 86);
        f4489o.append(C0503R.styleable.ConstraintOverride_layout_wrapBehaviorInParent, 97);
    }

    /* renamed from: A */
    public static String[] m2148A(String str) {
        char[] charArray = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        boolean z = false;
        for (int i2 = 0; i2 < charArray.length; i2++) {
            char c = charArray[i2];
            if (c == ',' && !z) {
                arrayList.add(new String(charArray, i, i2 - i));
                i = i2 + 1;
            } else if (c == '\"') {
                z = !z;
            }
        }
        arrayList.add(new String(charArray, i, charArray.length - i));
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static Constraint buildDelta(Context context, XmlPullParser parser) {
        AttributeSet asAttributeSet = Xml.asAttributeSet(parser);
        Constraint constraint = new Constraint();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(asAttributeSet, C0503R.styleable.ConstraintOverride);
        m2162u(context, constraint, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        return constraint;
    }

    /* renamed from: n */
    public static String m2156n(int v) {
        for (Field field : ConstraintSet.class.getDeclaredFields()) {
            if (field.getName().contains("_") && field.getType() == Integer.TYPE && Modifier.isStatic(field.getModifiers()) && Modifier.isFinal(field.getModifiers())) {
                try {
                    if (field.getInt(null) == v) {
                        return field.getName();
                    }
                    continue;
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
            }
        }
        return HwrRecognizerConstant.RECOGNIZER_UNKNOWN;
    }

    /* renamed from: o */
    public static String m2157o(Context context, int resourceId, XmlPullParser pullParser) {
        return ".(" + Debug.getName(context, resourceId) + ".xml:" + pullParser.getLineNumber() + ") \"" + pullParser.getName() + "\"";
    }

    /* renamed from: p */
    public static int m2158p(TypedArray a, int index, int def) {
        int resourceId = a.getResourceId(index, def);
        return resourceId == -1 ? a.getInt(index, -1) : resourceId;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003f  */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m2159q(java.lang.Object r4, android.content.res.TypedArray r5, int r6, int r7) {
        /*
            if (r4 != 0) goto L3
            return
        L3:
            android.util.TypedValue r0 = r5.peekValue(r6)
            int r0 = r0.type
            r1 = 3
            if (r0 == r1) goto L6f
            r1 = 5
            r2 = 0
            if (r0 == r1) goto L26
            int r5 = r5.getInt(r6, r2)
            r6 = -4
            r0 = -2
            if (r5 == r6) goto L22
            r6 = -3
            if (r5 == r6) goto L20
            if (r5 == r0) goto L2a
            r6 = -1
            if (r5 == r6) goto L2a
        L20:
            r5 = r2
            goto L2d
        L22:
            r2 = 1
            r5 = r2
            r2 = r0
            goto L2d
        L26:
            int r5 = r5.getDimensionPixelSize(r6, r2)
        L2a:
            r3 = r2
            r2 = r5
            r5 = r3
        L2d:
            boolean r6 = r4 instanceof androidx.constraintlayout.widget.ConstraintLayout.LayoutParams
            if (r6 == 0) goto L3f
            androidx.constraintlayout.widget.ConstraintLayout$LayoutParams r4 = (androidx.constraintlayout.widget.ConstraintLayout.LayoutParams) r4
            if (r7 != 0) goto L3a
            r4.width = r2
            r4.constrainedWidth = r5
            goto L6e
        L3a:
            r4.height = r2
            r4.constrainedHeight = r5
            goto L6e
        L3f:
            boolean r6 = r4 instanceof androidx.constraintlayout.widget.ConstraintSet.Layout
            if (r6 == 0) goto L51
            androidx.constraintlayout.widget.ConstraintSet$Layout r4 = (androidx.constraintlayout.widget.ConstraintSet.Layout) r4
            if (r7 != 0) goto L4c
            r4.mWidth = r2
            r4.constrainedWidth = r5
            goto L6e
        L4c:
            r4.mHeight = r2
            r4.constrainedHeight = r5
            goto L6e
        L51:
            boolean r6 = r4 instanceof androidx.constraintlayout.widget.ConstraintSet.Constraint.C0500a
            if (r6 == 0) goto L6e
            androidx.constraintlayout.widget.ConstraintSet$Constraint$a r4 = (androidx.constraintlayout.widget.ConstraintSet.Constraint.C0500a) r4
            if (r7 != 0) goto L64
            r6 = 23
            r4.m2191b(r6, r2)
            r6 = 80
            r4.m2193d(r6, r5)
            goto L6e
        L64:
            r6 = 21
            r4.m2191b(r6, r2)
            r6 = 81
            r4.m2193d(r6, r5)
        L6e:
            return
        L6f:
            java.lang.String r5 = r5.getString(r6)
            m2160r(r4, r5, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintSet.m2159q(java.lang.Object, android.content.res.TypedArray, int, int):void");
    }

    /* renamed from: r */
    public static void m2160r(Object data, String value, int orientation) {
        if (value == null) {
            return;
        }
        int indexOf = value.indexOf(61);
        int length = value.length();
        if (indexOf <= 0 || indexOf >= length - 1) {
            return;
        }
        String substring = value.substring(0, indexOf);
        String substring2 = value.substring(indexOf + 1);
        if (substring2.length() > 0) {
            String trim = substring.trim();
            String trim2 = substring2.trim();
            if (f4483l1.equalsIgnoreCase(trim)) {
                if (data instanceof ConstraintLayout.LayoutParams) {
                    ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) data;
                    if (orientation == 0) {
                        ((ViewGroup.MarginLayoutParams) layoutParams).width = 0;
                    } else {
                        ((ViewGroup.MarginLayoutParams) layoutParams).height = 0;
                    }
                    m2161s(layoutParams, trim2);
                    return;
                }
                if (data instanceof Layout) {
                    ((Layout) data).dimensionRatio = trim2;
                    return;
                } else {
                    if (data instanceof Constraint.C0500a) {
                        ((Constraint.C0500a) data).m2192c(5, trim2);
                        return;
                    }
                    return;
                }
            }
            try {
                if ("weight".equalsIgnoreCase(trim)) {
                    float parseFloat = Float.parseFloat(trim2);
                    if (data instanceof ConstraintLayout.LayoutParams) {
                        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) data;
                        if (orientation == 0) {
                            ((ViewGroup.MarginLayoutParams) layoutParams2).width = 0;
                            layoutParams2.horizontalWeight = parseFloat;
                        } else {
                            ((ViewGroup.MarginLayoutParams) layoutParams2).height = 0;
                            layoutParams2.verticalWeight = parseFloat;
                        }
                    } else if (data instanceof Layout) {
                        Layout layout = (Layout) data;
                        if (orientation == 0) {
                            layout.mWidth = 0;
                            layout.horizontalWeight = parseFloat;
                        } else {
                            layout.mHeight = 0;
                            layout.verticalWeight = parseFloat;
                        }
                    } else if (data instanceof Constraint.C0500a) {
                        Constraint.C0500a c0500a = (Constraint.C0500a) data;
                        if (orientation == 0) {
                            c0500a.m2191b(23, 0);
                            c0500a.m2190a(39, parseFloat);
                        } else {
                            c0500a.m2191b(21, 0);
                            c0500a.m2190a(40, parseFloat);
                        }
                    }
                } else {
                    if (!"parent".equalsIgnoreCase(trim)) {
                        return;
                    }
                    float max = Math.max(0.0f, Math.min(1.0f, Float.parseFloat(trim2)));
                    if (data instanceof ConstraintLayout.LayoutParams) {
                        ConstraintLayout.LayoutParams layoutParams3 = (ConstraintLayout.LayoutParams) data;
                        if (orientation == 0) {
                            ((ViewGroup.MarginLayoutParams) layoutParams3).width = 0;
                            layoutParams3.matchConstraintPercentWidth = max;
                            layoutParams3.matchConstraintDefaultWidth = 2;
                        } else {
                            ((ViewGroup.MarginLayoutParams) layoutParams3).height = 0;
                            layoutParams3.matchConstraintPercentHeight = max;
                            layoutParams3.matchConstraintDefaultHeight = 2;
                        }
                    } else if (data instanceof Layout) {
                        Layout layout2 = (Layout) data;
                        if (orientation == 0) {
                            layout2.mWidth = 0;
                            layout2.widthPercent = max;
                            layout2.widthDefault = 2;
                        } else {
                            layout2.mHeight = 0;
                            layout2.heightPercent = max;
                            layout2.heightDefault = 2;
                        }
                    } else if (data instanceof Constraint.C0500a) {
                        Constraint.C0500a c0500a2 = (Constraint.C0500a) data;
                        if (orientation == 0) {
                            c0500a2.m2191b(23, 0);
                            c0500a2.m2191b(54, 2);
                        } else {
                            c0500a2.m2191b(21, 0);
                            c0500a2.m2191b(55, 2);
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    /* renamed from: s */
    public static void m2161s(ConstraintLayout.LayoutParams params, String value) {
        float f = Float.NaN;
        int i = -1;
        if (value != null) {
            int length = value.length();
            int indexOf = value.indexOf(44);
            int i2 = 0;
            if (indexOf > 0 && indexOf < length - 1) {
                String substring = value.substring(0, indexOf);
                if (substring.equalsIgnoreCase("W")) {
                    i = 0;
                } else if (substring.equalsIgnoreCase("H")) {
                    i = 1;
                }
                i2 = indexOf + 1;
            }
            int indexOf2 = value.indexOf(58);
            try {
                if (indexOf2 < 0 || indexOf2 >= length - 1) {
                    String substring2 = value.substring(i2);
                    if (substring2.length() > 0) {
                        f = Float.parseFloat(substring2);
                    }
                } else {
                    String substring3 = value.substring(i2, indexOf2);
                    String substring4 = value.substring(indexOf2 + 1);
                    if (substring3.length() > 0 && substring4.length() > 0) {
                        float parseFloat = Float.parseFloat(substring3);
                        float parseFloat2 = Float.parseFloat(substring4);
                        if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                            f = i == 1 ? Math.abs(parseFloat2 / parseFloat) : Math.abs(parseFloat / parseFloat2);
                        }
                    }
                }
            } catch (NumberFormatException unused) {
            }
        }
        params.dimensionRatio = value;
        params.f4289c = f;
        params.f4290d = i;
    }

    /* renamed from: u */
    public static void m2162u(Context ctx, Constraint c, TypedArray a) {
        int indexCount = a.getIndexCount();
        Constraint.C0500a c0500a = new Constraint.C0500a();
        c.f4519c = c0500a;
        c.motion.mApply = false;
        c.layout.mApply = false;
        c.propertySet.mApply = false;
        c.transform.mApply = false;
        for (int i = 0; i < indexCount; i++) {
            int index = a.getIndex(i);
            switch (f4489o.get(index)) {
                case 2:
                    c0500a.m2191b(2, a.getDimensionPixelSize(index, c.layout.bottomMargin));
                    break;
                case 3:
                case 4:
                case 9:
                case 10:
                case 25:
                case 26:
                case 29:
                case 30:
                case 32:
                case 33:
                case 35:
                case 36:
                case 61:
                case 88:
                case 89:
                case 90:
                case 91:
                case 92:
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f4487n.get(index));
                    break;
                case 5:
                    c0500a.m2192c(5, a.getString(index));
                    break;
                case 6:
                    c0500a.m2191b(6, a.getDimensionPixelOffset(index, c.layout.editorAbsoluteX));
                    break;
                case 7:
                    c0500a.m2191b(7, a.getDimensionPixelOffset(index, c.layout.editorAbsoluteY));
                    break;
                case 8:
                    c0500a.m2191b(8, a.getDimensionPixelSize(index, c.layout.endMargin));
                    break;
                case 11:
                    c0500a.m2191b(11, a.getDimensionPixelSize(index, c.layout.goneBottomMargin));
                    break;
                case 12:
                    c0500a.m2191b(12, a.getDimensionPixelSize(index, c.layout.goneEndMargin));
                    break;
                case 13:
                    c0500a.m2191b(13, a.getDimensionPixelSize(index, c.layout.goneLeftMargin));
                    break;
                case 14:
                    c0500a.m2191b(14, a.getDimensionPixelSize(index, c.layout.goneRightMargin));
                    break;
                case 15:
                    c0500a.m2191b(15, a.getDimensionPixelSize(index, c.layout.goneStartMargin));
                    break;
                case 16:
                    c0500a.m2191b(16, a.getDimensionPixelSize(index, c.layout.goneTopMargin));
                    break;
                case 17:
                    c0500a.m2191b(17, a.getDimensionPixelOffset(index, c.layout.guideBegin));
                    break;
                case 18:
                    c0500a.m2191b(18, a.getDimensionPixelOffset(index, c.layout.guideEnd));
                    break;
                case 19:
                    c0500a.m2190a(19, a.getFloat(index, c.layout.guidePercent));
                    break;
                case 20:
                    c0500a.m2190a(20, a.getFloat(index, c.layout.horizontalBias));
                    break;
                case 21:
                    c0500a.m2191b(21, a.getLayoutDimension(index, c.layout.mHeight));
                    break;
                case 22:
                    c0500a.m2191b(22, f4481l[a.getInt(index, c.propertySet.visibility)]);
                    break;
                case 23:
                    c0500a.m2191b(23, a.getLayoutDimension(index, c.layout.mWidth));
                    break;
                case 24:
                    c0500a.m2191b(24, a.getDimensionPixelSize(index, c.layout.leftMargin));
                    break;
                case 27:
                    c0500a.m2191b(27, a.getInt(index, c.layout.orientation));
                    break;
                case 28:
                    c0500a.m2191b(28, a.getDimensionPixelSize(index, c.layout.rightMargin));
                    break;
                case 31:
                    c0500a.m2191b(31, a.getDimensionPixelSize(index, c.layout.startMargin));
                    break;
                case 34:
                    c0500a.m2191b(34, a.getDimensionPixelSize(index, c.layout.topMargin));
                    break;
                case 37:
                    c0500a.m2190a(37, a.getFloat(index, c.layout.verticalBias));
                    break;
                case 38:
                    int resourceId = a.getResourceId(index, c.f4517a);
                    c.f4517a = resourceId;
                    c0500a.m2191b(38, resourceId);
                    break;
                case 39:
                    c0500a.m2190a(39, a.getFloat(index, c.layout.horizontalWeight));
                    break;
                case 40:
                    c0500a.m2190a(40, a.getFloat(index, c.layout.verticalWeight));
                    break;
                case 41:
                    c0500a.m2191b(41, a.getInt(index, c.layout.horizontalChainStyle));
                    break;
                case 42:
                    c0500a.m2191b(42, a.getInt(index, c.layout.verticalChainStyle));
                    break;
                case 43:
                    c0500a.m2190a(43, a.getFloat(index, c.propertySet.alpha));
                    break;
                case 44:
                    c0500a.m2193d(44, true);
                    c0500a.m2190a(44, a.getDimension(index, c.transform.elevation));
                    break;
                case 45:
                    c0500a.m2190a(45, a.getFloat(index, c.transform.rotationX));
                    break;
                case 46:
                    c0500a.m2190a(46, a.getFloat(index, c.transform.rotationY));
                    break;
                case 47:
                    c0500a.m2190a(47, a.getFloat(index, c.transform.scaleX));
                    break;
                case 48:
                    c0500a.m2190a(48, a.getFloat(index, c.transform.scaleY));
                    break;
                case 49:
                    c0500a.m2190a(49, a.getDimension(index, c.transform.transformPivotX));
                    break;
                case 50:
                    c0500a.m2190a(50, a.getDimension(index, c.transform.transformPivotY));
                    break;
                case 51:
                    c0500a.m2190a(51, a.getDimension(index, c.transform.translationX));
                    break;
                case 52:
                    c0500a.m2190a(52, a.getDimension(index, c.transform.translationY));
                    break;
                case 53:
                    c0500a.m2190a(53, a.getDimension(index, c.transform.translationZ));
                    break;
                case 54:
                    c0500a.m2191b(54, a.getInt(index, c.layout.widthDefault));
                    break;
                case 55:
                    c0500a.m2191b(55, a.getInt(index, c.layout.heightDefault));
                    break;
                case 56:
                    c0500a.m2191b(56, a.getDimensionPixelSize(index, c.layout.widthMax));
                    break;
                case 57:
                    c0500a.m2191b(57, a.getDimensionPixelSize(index, c.layout.heightMax));
                    break;
                case 58:
                    c0500a.m2191b(58, a.getDimensionPixelSize(index, c.layout.widthMin));
                    break;
                case 59:
                    c0500a.m2191b(59, a.getDimensionPixelSize(index, c.layout.heightMin));
                    break;
                case 60:
                    c0500a.m2190a(60, a.getFloat(index, c.transform.rotation));
                    break;
                case 62:
                    c0500a.m2191b(62, a.getDimensionPixelSize(index, c.layout.circleRadius));
                    break;
                case 63:
                    c0500a.m2190a(63, a.getFloat(index, c.layout.circleAngle));
                    break;
                case 64:
                    c0500a.m2191b(64, m2158p(a, index, c.motion.mAnimateRelativeTo));
                    break;
                case 65:
                    if (a.peekValue(index).type == 3) {
                        c0500a.m2192c(65, a.getString(index));
                        break;
                    } else {
                        c0500a.m2192c(65, Easing.NAMED_EASING[a.getInteger(index, 0)]);
                        break;
                    }
                case 66:
                    c0500a.m2191b(66, a.getInt(index, 0));
                    break;
                case 67:
                    c0500a.m2190a(67, a.getFloat(index, c.motion.mPathRotate));
                    break;
                case 68:
                    c0500a.m2190a(68, a.getFloat(index, c.propertySet.mProgress));
                    break;
                case 69:
                    c0500a.m2190a(69, a.getFloat(index, 1.0f));
                    break;
                case 70:
                    c0500a.m2190a(70, a.getFloat(index, 1.0f));
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    c0500a.m2191b(72, a.getInt(index, c.layout.mBarrierDirection));
                    break;
                case 73:
                    c0500a.m2191b(73, a.getDimensionPixelSize(index, c.layout.mBarrierMargin));
                    break;
                case 74:
                    c0500a.m2192c(74, a.getString(index));
                    break;
                case 75:
                    c0500a.m2193d(75, a.getBoolean(index, c.layout.mBarrierAllowsGoneWidgets));
                    break;
                case 76:
                    c0500a.m2191b(76, a.getInt(index, c.motion.mPathMotionArc));
                    break;
                case 77:
                    c0500a.m2192c(77, a.getString(index));
                    break;
                case 78:
                    c0500a.m2191b(78, a.getInt(index, c.propertySet.mVisibilityMode));
                    break;
                case 79:
                    c0500a.m2190a(79, a.getFloat(index, c.motion.mMotionStagger));
                    break;
                case 80:
                    c0500a.m2193d(80, a.getBoolean(index, c.layout.constrainedWidth));
                    break;
                case 81:
                    c0500a.m2193d(81, a.getBoolean(index, c.layout.constrainedHeight));
                    break;
                case 82:
                    c0500a.m2191b(82, a.getInteger(index, c.motion.mAnimateCircleAngleTo));
                    break;
                case 83:
                    c0500a.m2191b(83, m2158p(a, index, c.transform.transformPivotTarget));
                    break;
                case 84:
                    c0500a.m2191b(84, a.getInteger(index, c.motion.mQuantizeMotionSteps));
                    break;
                case 85:
                    c0500a.m2190a(85, a.getFloat(index, c.motion.mQuantizeMotionPhase));
                    break;
                case 86:
                    int i2 = a.peekValue(index).type;
                    if (i2 == 1) {
                        c.motion.mQuantizeInterpolatorID = a.getResourceId(index, -1);
                        c0500a.m2191b(89, c.motion.mQuantizeInterpolatorID);
                        Motion motion = c.motion;
                        if (motion.mQuantizeInterpolatorID != -1) {
                            motion.mQuantizeInterpolatorType = -2;
                            c0500a.m2191b(88, -2);
                            break;
                        } else {
                            break;
                        }
                    } else if (i2 == 3) {
                        c.motion.mQuantizeInterpolatorString = a.getString(index);
                        c0500a.m2192c(90, c.motion.mQuantizeInterpolatorString);
                        if (c.motion.mQuantizeInterpolatorString.indexOf("/") > 0) {
                            c.motion.mQuantizeInterpolatorID = a.getResourceId(index, -1);
                            c0500a.m2191b(89, c.motion.mQuantizeInterpolatorID);
                            c.motion.mQuantizeInterpolatorType = -2;
                            c0500a.m2191b(88, -2);
                            break;
                        } else {
                            c.motion.mQuantizeInterpolatorType = -1;
                            c0500a.m2191b(88, -1);
                            break;
                        }
                    } else {
                        Motion motion2 = c.motion;
                        motion2.mQuantizeInterpolatorType = a.getInteger(index, motion2.mQuantizeInterpolatorID);
                        c0500a.m2191b(88, c.motion.mQuantizeInterpolatorType);
                        break;
                    }
                case 87:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f4487n.get(index));
                    break;
                case 93:
                    c0500a.m2191b(93, a.getDimensionPixelSize(index, c.layout.baselineMargin));
                    break;
                case 94:
                    c0500a.m2191b(94, a.getDimensionPixelSize(index, c.layout.goneBaselineMargin));
                    break;
                case 95:
                    m2159q(c0500a, a, index, 0);
                    break;
                case 96:
                    m2159q(c0500a, a, index, 1);
                    break;
                case 97:
                    c0500a.m2191b(97, a.getInt(index, c.layout.mWrapBehavior));
                    break;
                case 98:
                    if (MotionLayout.IS_IN_EDIT_MODE) {
                        int resourceId2 = a.getResourceId(index, c.f4517a);
                        c.f4517a = resourceId2;
                        if (resourceId2 == -1) {
                            c.f4518b = a.getString(index);
                            break;
                        } else {
                            break;
                        }
                    } else if (a.peekValue(index).type == 3) {
                        c.f4518b = a.getString(index);
                        break;
                    } else {
                        c.f4517a = a.getResourceId(index, c.f4517a);
                        break;
                    }
                case 99:
                    c0500a.m2193d(99, a.getBoolean(index, c.layout.guidelineUseRtl));
                    break;
            }
        }
    }

    /* renamed from: v */
    public static void m2163v(Constraint c, int type, float value) {
        if (type == 19) {
            c.layout.guidePercent = value;
            return;
        }
        if (type == 20) {
            c.layout.horizontalBias = value;
            return;
        }
        if (type == 37) {
            c.layout.verticalBias = value;
            return;
        }
        if (type == 60) {
            c.transform.rotation = value;
            return;
        }
        if (type == 63) {
            c.layout.circleAngle = value;
            return;
        }
        if (type == 79) {
            c.motion.mMotionStagger = value;
            return;
        }
        if (type == 85) {
            c.motion.mQuantizeMotionPhase = value;
            return;
        }
        if (type != 87) {
            if (type == 39) {
                c.layout.horizontalWeight = value;
                return;
            }
            if (type == 40) {
                c.layout.verticalWeight = value;
                return;
            }
            switch (type) {
                case 43:
                    c.propertySet.alpha = value;
                    return;
                case 44:
                    Transform transform = c.transform;
                    transform.elevation = value;
                    transform.applyElevation = true;
                    return;
                case 45:
                    c.transform.rotationX = value;
                    return;
                case 46:
                    c.transform.rotationY = value;
                    return;
                case 47:
                    c.transform.scaleX = value;
                    return;
                case 48:
                    c.transform.scaleY = value;
                    return;
                case 49:
                    c.transform.transformPivotX = value;
                    return;
                case 50:
                    c.transform.transformPivotY = value;
                    return;
                case 51:
                    c.transform.translationX = value;
                    return;
                case 52:
                    c.transform.translationY = value;
                    return;
                case 53:
                    c.transform.translationZ = value;
                    return;
                default:
                    switch (type) {
                        case 67:
                            c.motion.mPathRotate = value;
                            return;
                        case 68:
                            c.propertySet.mProgress = value;
                            return;
                        case 69:
                            c.layout.widthPercent = value;
                            return;
                        case 70:
                            c.layout.heightPercent = value;
                            return;
                        default:
                            Log.w("ConstraintSet", "Unknown attribute 0x");
                            return;
                    }
            }
        }
    }

    /* renamed from: w */
    public static void m2164w(Constraint c, int type, int value) {
        if (type == 6) {
            c.layout.editorAbsoluteX = value;
            return;
        }
        if (type == 7) {
            c.layout.editorAbsoluteY = value;
            return;
        }
        if (type == 8) {
            c.layout.endMargin = value;
            return;
        }
        if (type == 27) {
            c.layout.orientation = value;
            return;
        }
        if (type == 28) {
            c.layout.rightMargin = value;
            return;
        }
        if (type == 41) {
            c.layout.horizontalChainStyle = value;
            return;
        }
        if (type == 42) {
            c.layout.verticalChainStyle = value;
            return;
        }
        if (type == 61) {
            c.layout.circleConstraint = value;
            return;
        }
        if (type == 62) {
            c.layout.circleRadius = value;
            return;
        }
        if (type == 72) {
            c.layout.mBarrierDirection = value;
            return;
        }
        if (type == 73) {
            c.layout.mBarrierMargin = value;
            return;
        }
        switch (type) {
            case 2:
                c.layout.bottomMargin = value;
                return;
            case 11:
                c.layout.goneBottomMargin = value;
                return;
            case 12:
                c.layout.goneEndMargin = value;
                return;
            case 13:
                c.layout.goneLeftMargin = value;
                return;
            case 14:
                c.layout.goneRightMargin = value;
                return;
            case 15:
                c.layout.goneStartMargin = value;
                return;
            case 16:
                c.layout.goneTopMargin = value;
                return;
            case 17:
                c.layout.guideBegin = value;
                return;
            case 18:
                c.layout.guideEnd = value;
                return;
            case 31:
                c.layout.startMargin = value;
                return;
            case 34:
                c.layout.topMargin = value;
                return;
            case 38:
                c.f4517a = value;
                return;
            case 64:
                c.motion.mAnimateRelativeTo = value;
                return;
            case 66:
                c.motion.mDrawPath = value;
                return;
            case 76:
                c.motion.mPathMotionArc = value;
                return;
            case 78:
                c.propertySet.mVisibilityMode = value;
                return;
            case 93:
                c.layout.baselineMargin = value;
                return;
            case 94:
                c.layout.goneBaselineMargin = value;
                return;
            case 97:
                c.layout.mWrapBehavior = value;
                return;
            default:
                switch (type) {
                    case 21:
                        c.layout.mHeight = value;
                        return;
                    case 22:
                        c.propertySet.visibility = value;
                        return;
                    case 23:
                        c.layout.mWidth = value;
                        return;
                    case 24:
                        c.layout.leftMargin = value;
                        return;
                    default:
                        switch (type) {
                            case 54:
                                c.layout.widthDefault = value;
                                return;
                            case 55:
                                c.layout.heightDefault = value;
                                return;
                            case 56:
                                c.layout.widthMax = value;
                                return;
                            case 57:
                                c.layout.heightMax = value;
                                return;
                            case 58:
                                c.layout.widthMin = value;
                                return;
                            case 59:
                                c.layout.heightMin = value;
                                return;
                            default:
                                switch (type) {
                                    case 82:
                                        c.motion.mAnimateCircleAngleTo = value;
                                        return;
                                    case 83:
                                        c.transform.transformPivotTarget = value;
                                        return;
                                    case 84:
                                        c.motion.mQuantizeMotionSteps = value;
                                        return;
                                    default:
                                        switch (type) {
                                            case 87:
                                                return;
                                            case 88:
                                                c.motion.mQuantizeInterpolatorType = value;
                                                return;
                                            case 89:
                                                c.motion.mQuantizeInterpolatorID = value;
                                                return;
                                            default:
                                                Log.w("ConstraintSet", "Unknown attribute 0x");
                                                return;
                                        }
                                }
                        }
                }
        }
    }

    /* renamed from: x */
    public static void m2165x(Constraint c, int type, String value) {
        if (type == 5) {
            c.layout.dimensionRatio = value;
            return;
        }
        if (type == 65) {
            c.motion.mTransitionEasing = value;
            return;
        }
        if (type == 74) {
            Layout layout = c.layout;
            layout.mReferenceIdString = value;
            layout.mReferenceIds = null;
        } else if (type == 77) {
            c.layout.mConstraintTag = value;
        } else if (type != 87) {
            if (type != 90) {
                Log.w("ConstraintSet", "Unknown attribute 0x");
            } else {
                c.motion.mQuantizeInterpolatorString = value;
            }
        }
    }

    /* renamed from: y */
    public static void m2166y(Constraint c, int type, boolean value) {
        if (type == 44) {
            c.transform.applyElevation = value;
            return;
        }
        if (type == 75) {
            c.layout.mBarrierAllowsGoneWidgets = value;
            return;
        }
        if (type != 87) {
            if (type == 80) {
                c.layout.constrainedWidth = value;
            } else if (type != 81) {
                Log.w("ConstraintSet", "Unknown attribute 0x");
            } else {
                c.layout.constrainedHeight = value;
            }
        }
    }

    public void addColorAttributes(String... attributeName) {
        m2167h(ConstraintAttribute.AttributeType.COLOR_TYPE, attributeName);
    }

    public void addFloatAttributes(String... attributeName) {
        m2167h(ConstraintAttribute.AttributeType.FLOAT_TYPE, attributeName);
    }

    public void addIntAttributes(String... attributeName) {
        m2167h(ConstraintAttribute.AttributeType.INT_TYPE, attributeName);
    }

    public void addStringAttributes(String... attributeName) {
        m2167h(ConstraintAttribute.AttributeType.STRING_TYPE, attributeName);
    }

    public void addToHorizontalChain(int viewId, int leftId, int rightId) {
        connect(viewId, 1, leftId, leftId == 0 ? 1 : 2, 0);
        connect(viewId, 2, rightId, rightId == 0 ? 2 : 1, 0);
        if (leftId != 0) {
            connect(leftId, 2, viewId, 1, 0);
        }
        if (rightId != 0) {
            connect(rightId, 1, viewId, 2, 0);
        }
    }

    public void addToHorizontalChainRTL(int viewId, int leftId, int rightId) {
        connect(viewId, 6, leftId, leftId == 0 ? 6 : 7, 0);
        connect(viewId, 7, rightId, rightId == 0 ? 7 : 6, 0);
        if (leftId != 0) {
            connect(leftId, 7, viewId, 6, 0);
        }
        if (rightId != 0) {
            connect(rightId, 6, viewId, 7, 0);
        }
    }

    public void addToVerticalChain(int viewId, int topId, int bottomId) {
        connect(viewId, 3, topId, topId == 0 ? 3 : 4, 0);
        connect(viewId, 4, bottomId, bottomId == 0 ? 4 : 3, 0);
        if (topId != 0) {
            connect(topId, 4, viewId, 3, 0);
        }
        if (bottomId != 0) {
            connect(bottomId, 3, viewId, 4, 0);
        }
    }

    public void applyCustomAttributes(ConstraintLayout constraintLayout) {
        Constraint constraint;
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.f4516d.containsKey(Integer.valueOf(id))) {
                Log.w("ConstraintSet", "id unknown " + Debug.getName(childAt));
            } else {
                if (this.f4515c && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (this.f4516d.containsKey(Integer.valueOf(id)) && (constraint = this.f4516d.get(Integer.valueOf(id))) != null) {
                    ConstraintAttribute.setAttributes(childAt, constraint.mCustomConstraints);
                }
            }
        }
    }

    public void applyDeltaFrom(ConstraintSet cs) {
        for (Constraint constraint : cs.f4516d.values()) {
            if (constraint.f4519c != null) {
                if (constraint.f4518b != null) {
                    Iterator<Integer> it2 = this.f4516d.keySet().iterator();
                    while (it2.hasNext()) {
                        Constraint constraint2 = getConstraint(it2.next().intValue());
                        String str = constraint2.layout.mConstraintTag;
                        if (str != null && constraint.f4518b.matches(str)) {
                            constraint.f4519c.m2194e(constraint2);
                            constraint2.mCustomConstraints.putAll((HashMap) constraint.mCustomConstraints.clone());
                        }
                    }
                } else {
                    constraint.f4519c.m2194e(getConstraint(constraint.f4517a));
                }
            }
        }
    }

    public void applyTo(ConstraintLayout constraintLayout) {
        m2168i(constraintLayout, true);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    public void applyToHelper(ConstraintHelper helper, ConstraintWidget child, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> mapIdToWidget) {
        Constraint constraint;
        int id = helper.getId();
        if (this.f4516d.containsKey(Integer.valueOf(id)) && (constraint = this.f4516d.get(Integer.valueOf(id))) != null && (child instanceof HelperWidget)) {
            helper.loadParameters(constraint, (HelperWidget) child, layoutParams, mapIdToWidget);
        }
    }

    public void applyToLayoutParams(int id, ConstraintLayout.LayoutParams layoutParams) {
        Constraint constraint;
        if (!this.f4516d.containsKey(Integer.valueOf(id)) || (constraint = this.f4516d.get(Integer.valueOf(id))) == null) {
            return;
        }
        constraint.applyTo(layoutParams);
    }

    public void applyToWithoutCustom(ConstraintLayout constraintLayout) {
        m2168i(constraintLayout, false);
        constraintLayout.setConstraintSet(null);
    }

    public void center(int centerID, int firstID, int firstSide, int firstMargin, int secondId, int secondSide, int secondMargin, float bias) {
        if (firstMargin < 0) {
            throw new IllegalArgumentException("margin must be > 0");
        }
        if (secondMargin < 0) {
            throw new IllegalArgumentException("margin must be > 0");
        }
        if (bias <= 0.0f || bias > 1.0f) {
            throw new IllegalArgumentException("bias must be between 0 and 1 inclusive");
        }
        if (firstSide == 1 || firstSide == 2) {
            connect(centerID, 1, firstID, firstSide, firstMargin);
            connect(centerID, 2, secondId, secondSide, secondMargin);
            Constraint constraint = this.f4516d.get(Integer.valueOf(centerID));
            if (constraint != null) {
                constraint.layout.horizontalBias = bias;
                return;
            }
            return;
        }
        if (firstSide == 6 || firstSide == 7) {
            connect(centerID, 6, firstID, firstSide, firstMargin);
            connect(centerID, 7, secondId, secondSide, secondMargin);
            Constraint constraint2 = this.f4516d.get(Integer.valueOf(centerID));
            if (constraint2 != null) {
                constraint2.layout.horizontalBias = bias;
                return;
            }
            return;
        }
        connect(centerID, 3, firstID, firstSide, firstMargin);
        connect(centerID, 4, secondId, secondSide, secondMargin);
        Constraint constraint3 = this.f4516d.get(Integer.valueOf(centerID));
        if (constraint3 != null) {
            constraint3.layout.verticalBias = bias;
        }
    }

    public void centerHorizontally(int centerID, int leftId, int leftSide, int leftMargin, int rightId, int rightSide, int rightMargin, float bias) {
        connect(centerID, 1, leftId, leftSide, leftMargin);
        connect(centerID, 2, rightId, rightSide, rightMargin);
        Constraint constraint = this.f4516d.get(Integer.valueOf(centerID));
        if (constraint != null) {
            constraint.layout.horizontalBias = bias;
        }
    }

    public void centerHorizontallyRtl(int centerID, int startId, int startSide, int startMargin, int endId, int endSide, int endMargin, float bias) {
        connect(centerID, 6, startId, startSide, startMargin);
        connect(centerID, 7, endId, endSide, endMargin);
        Constraint constraint = this.f4516d.get(Integer.valueOf(centerID));
        if (constraint != null) {
            constraint.layout.horizontalBias = bias;
        }
    }

    public void centerVertically(int centerID, int topId, int topSide, int topMargin, int bottomId, int bottomSide, int bottomMargin, float bias) {
        connect(centerID, 3, topId, topSide, topMargin);
        connect(centerID, 4, bottomId, bottomSide, bottomMargin);
        Constraint constraint = this.f4516d.get(Integer.valueOf(centerID));
        if (constraint != null) {
            constraint.layout.verticalBias = bias;
        }
    }

    public void clear(int viewId) {
        this.f4516d.remove(Integer.valueOf(viewId));
    }

    public void clone(Context context, int constraintLayoutId) {
        clone((ConstraintLayout) LayoutInflater.from(context).inflate(constraintLayoutId, (ViewGroup) null));
    }

    public void connect(int startID, int startSide, int endID, int endSide, int margin) {
        if (!this.f4516d.containsKey(Integer.valueOf(startID))) {
            this.f4516d.put(Integer.valueOf(startID), new Constraint());
        }
        Constraint constraint = this.f4516d.get(Integer.valueOf(startID));
        if (constraint == null) {
            return;
        }
        switch (startSide) {
            case 1:
                if (endSide == 1) {
                    Layout layout = constraint.layout;
                    layout.leftToLeft = endID;
                    layout.leftToRight = -1;
                } else if (endSide == 2) {
                    Layout layout2 = constraint.layout;
                    layout2.leftToRight = endID;
                    layout2.leftToLeft = -1;
                } else {
                    throw new IllegalArgumentException("Left to " + m2174z(endSide) + " undefined");
                }
                constraint.layout.leftMargin = margin;
                return;
            case 2:
                if (endSide == 1) {
                    Layout layout3 = constraint.layout;
                    layout3.rightToLeft = endID;
                    layout3.rightToRight = -1;
                } else if (endSide == 2) {
                    Layout layout4 = constraint.layout;
                    layout4.rightToRight = endID;
                    layout4.rightToLeft = -1;
                } else {
                    throw new IllegalArgumentException("right to " + m2174z(endSide) + " undefined");
                }
                constraint.layout.rightMargin = margin;
                return;
            case 3:
                if (endSide == 3) {
                    Layout layout5 = constraint.layout;
                    layout5.topToTop = endID;
                    layout5.topToBottom = -1;
                    layout5.baselineToBaseline = -1;
                    layout5.baselineToTop = -1;
                    layout5.baselineToBottom = -1;
                } else if (endSide == 4) {
                    Layout layout6 = constraint.layout;
                    layout6.topToBottom = endID;
                    layout6.topToTop = -1;
                    layout6.baselineToBaseline = -1;
                    layout6.baselineToTop = -1;
                    layout6.baselineToBottom = -1;
                } else {
                    throw new IllegalArgumentException("right to " + m2174z(endSide) + " undefined");
                }
                constraint.layout.topMargin = margin;
                return;
            case 4:
                if (endSide == 4) {
                    Layout layout7 = constraint.layout;
                    layout7.bottomToBottom = endID;
                    layout7.bottomToTop = -1;
                    layout7.baselineToBaseline = -1;
                    layout7.baselineToTop = -1;
                    layout7.baselineToBottom = -1;
                } else if (endSide == 3) {
                    Layout layout8 = constraint.layout;
                    layout8.bottomToTop = endID;
                    layout8.bottomToBottom = -1;
                    layout8.baselineToBaseline = -1;
                    layout8.baselineToTop = -1;
                    layout8.baselineToBottom = -1;
                } else {
                    throw new IllegalArgumentException("right to " + m2174z(endSide) + " undefined");
                }
                constraint.layout.bottomMargin = margin;
                return;
            case 5:
                if (endSide == 5) {
                    Layout layout9 = constraint.layout;
                    layout9.baselineToBaseline = endID;
                    layout9.bottomToBottom = -1;
                    layout9.bottomToTop = -1;
                    layout9.topToTop = -1;
                    layout9.topToBottom = -1;
                    return;
                }
                if (endSide == 3) {
                    Layout layout10 = constraint.layout;
                    layout10.baselineToTop = endID;
                    layout10.bottomToBottom = -1;
                    layout10.bottomToTop = -1;
                    layout10.topToTop = -1;
                    layout10.topToBottom = -1;
                    return;
                }
                if (endSide == 4) {
                    Layout layout11 = constraint.layout;
                    layout11.baselineToBottom = endID;
                    layout11.bottomToBottom = -1;
                    layout11.bottomToTop = -1;
                    layout11.topToTop = -1;
                    layout11.topToBottom = -1;
                    return;
                }
                throw new IllegalArgumentException("right to " + m2174z(endSide) + " undefined");
            case 6:
                if (endSide == 6) {
                    Layout layout12 = constraint.layout;
                    layout12.startToStart = endID;
                    layout12.startToEnd = -1;
                } else if (endSide == 7) {
                    Layout layout13 = constraint.layout;
                    layout13.startToEnd = endID;
                    layout13.startToStart = -1;
                } else {
                    throw new IllegalArgumentException("right to " + m2174z(endSide) + " undefined");
                }
                constraint.layout.startMargin = margin;
                return;
            case 7:
                if (endSide == 7) {
                    Layout layout14 = constraint.layout;
                    layout14.endToEnd = endID;
                    layout14.endToStart = -1;
                } else if (endSide == 6) {
                    Layout layout15 = constraint.layout;
                    layout15.endToStart = endID;
                    layout15.endToEnd = -1;
                } else {
                    throw new IllegalArgumentException("right to " + m2174z(endSide) + " undefined");
                }
                constraint.layout.endMargin = margin;
                return;
            default:
                throw new IllegalArgumentException(m2174z(startSide) + " to " + m2174z(endSide) + " unknown");
        }
    }

    public void constrainCircle(int viewId, int id, int radius, float angle) {
        Layout layout = m2172m(viewId).layout;
        layout.circleConstraint = id;
        layout.circleRadius = radius;
        layout.circleAngle = angle;
    }

    public void constrainDefaultHeight(int viewId, int height) {
        m2172m(viewId).layout.heightDefault = height;
    }

    public void constrainDefaultWidth(int viewId, int width) {
        m2172m(viewId).layout.widthDefault = width;
    }

    public void constrainHeight(int viewId, int height) {
        m2172m(viewId).layout.mHeight = height;
    }

    public void constrainMaxHeight(int viewId, int height) {
        m2172m(viewId).layout.heightMax = height;
    }

    public void constrainMaxWidth(int viewId, int width) {
        m2172m(viewId).layout.widthMax = width;
    }

    public void constrainMinHeight(int viewId, int height) {
        m2172m(viewId).layout.heightMin = height;
    }

    public void constrainMinWidth(int viewId, int width) {
        m2172m(viewId).layout.widthMin = width;
    }

    public void constrainPercentHeight(int viewId, float percent) {
        m2172m(viewId).layout.heightPercent = percent;
    }

    public void constrainPercentWidth(int viewId, float percent) {
        m2172m(viewId).layout.widthPercent = percent;
    }

    public void constrainWidth(int viewId, int width) {
        m2172m(viewId).layout.mWidth = width;
    }

    public void constrainedHeight(int viewId, boolean constrained) {
        m2172m(viewId).layout.constrainedHeight = constrained;
    }

    public void constrainedWidth(int viewId, boolean constrained) {
        m2172m(viewId).layout.constrainedWidth = constrained;
    }

    public void create(int guidelineID, int orientation) {
        Layout layout = m2172m(guidelineID).layout;
        layout.mIsGuideline = true;
        layout.orientation = orientation;
    }

    public void createBarrier(int id, int direction, int margin, int... referenced) {
        Layout layout = m2172m(id).layout;
        layout.mHelperType = 1;
        layout.mBarrierDirection = direction;
        layout.mBarrierMargin = margin;
        layout.mIsGuideline = false;
        layout.mReferenceIds = referenced;
    }

    public void createHorizontalChain(int leftId, int leftSide, int rightId, int rightSide, int[] chainIds, float[] weights, int style) {
        m2170k(leftId, leftSide, rightId, rightSide, chainIds, weights, style, 1, 2);
    }

    public void createHorizontalChainRtl(int startId, int startSide, int endId, int endSide, int[] chainIds, float[] weights, int style) {
        m2170k(startId, startSide, endId, endSide, chainIds, weights, style, 6, 7);
    }

    public void createVerticalChain(int topId, int topSide, int bottomId, int bottomSide, int[] chainIds, float[] weights, int style) {
        if (chainIds.length < 2) {
            throw new IllegalArgumentException("must have 2 or more widgets in a chain");
        }
        if (weights != null && weights.length != chainIds.length) {
            throw new IllegalArgumentException("must have 2 or more widgets in a chain");
        }
        if (weights != null) {
            m2172m(chainIds[0]).layout.verticalWeight = weights[0];
        }
        m2172m(chainIds[0]).layout.verticalChainStyle = style;
        connect(chainIds[0], 3, topId, topSide, 0);
        for (int i = 1; i < chainIds.length; i++) {
            int i2 = i - 1;
            connect(chainIds[i], 3, chainIds[i2], 4, 0);
            connect(chainIds[i2], 4, chainIds[i], 3, 0);
            if (weights != null) {
                m2172m(chainIds[i]).layout.verticalWeight = weights[i];
            }
        }
        connect(chainIds[chainIds.length - 1], 4, bottomId, bottomSide, 0);
    }

    public void dump(MotionScene scene, int... ids) {
        HashSet hashSet;
        Set<Integer> keySet = this.f4516d.keySet();
        if (ids.length != 0) {
            hashSet = new HashSet();
            for (int i : ids) {
                hashSet.add(Integer.valueOf(i));
            }
        } else {
            hashSet = new HashSet(keySet);
        }
        System.out.println(hashSet.size() + " constraints");
        StringBuilder sb = new StringBuilder();
        for (Integer num : (Integer[]) hashSet.toArray(new Integer[0])) {
            Constraint constraint = this.f4516d.get(num);
            if (constraint != null) {
                sb.append("<Constraint id=");
                sb.append(num);
                sb.append(" \n");
                constraint.layout.dump(scene, sb);
                sb.append("/>\n");
            }
        }
        System.out.println(sb.toString());
    }

    public boolean getApplyElevation(int viewId) {
        return m2172m(viewId).transform.applyElevation;
    }

    public Constraint getConstraint(int id) {
        if (this.f4516d.containsKey(Integer.valueOf(id))) {
            return this.f4516d.get(Integer.valueOf(id));
        }
        return null;
    }

    public HashMap<String, ConstraintAttribute> getCustomAttributeSet() {
        return this.f4514b;
    }

    public int getHeight(int viewId) {
        return m2172m(viewId).layout.mHeight;
    }

    public int[] getKnownIds() {
        Integer[] numArr = (Integer[]) this.f4516d.keySet().toArray(new Integer[0]);
        int length = numArr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = numArr[i].intValue();
        }
        return iArr;
    }

    public Constraint getParameters(int mId) {
        return m2172m(mId);
    }

    public int[] getReferencedIds(int id) {
        int[] iArr = m2172m(id).layout.mReferenceIds;
        return iArr == null ? new int[0] : Arrays.copyOf(iArr, iArr.length);
    }

    public int getVisibility(int viewId) {
        return m2172m(viewId).propertySet.visibility;
    }

    public int getVisibilityMode(int viewId) {
        return m2172m(viewId).propertySet.mVisibilityMode;
    }

    public int getWidth(int viewId) {
        return m2172m(viewId).layout.mWidth;
    }

    /* renamed from: h */
    public final void m2167h(ConstraintAttribute.AttributeType attributeType, String... attributeName) {
        for (int i = 0; i < attributeName.length; i++) {
            if (this.f4514b.containsKey(attributeName[i])) {
                ConstraintAttribute constraintAttribute = this.f4514b.get(attributeName[i]);
                if (constraintAttribute != null && constraintAttribute.getType() != attributeType) {
                    throw new IllegalArgumentException("ConstraintAttribute is already a " + constraintAttribute.getType().name());
                }
            } else {
                this.f4514b.put(attributeName[i], new ConstraintAttribute(attributeName[i], attributeType));
            }
        }
    }

    /* renamed from: i */
    public void m2168i(ConstraintLayout constraintLayout, boolean applyPostLayout) {
        int childCount = constraintLayout.getChildCount();
        HashSet hashSet = new HashSet(this.f4516d.keySet());
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.f4516d.containsKey(Integer.valueOf(id))) {
                Log.w("ConstraintSet", "id unknown " + Debug.getName(childAt));
            } else {
                if (this.f4515c && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id != -1) {
                    if (this.f4516d.containsKey(Integer.valueOf(id))) {
                        hashSet.remove(Integer.valueOf(id));
                        Constraint constraint = this.f4516d.get(Integer.valueOf(id));
                        if (constraint != null) {
                            if (childAt instanceof Barrier) {
                                constraint.layout.mHelperType = 1;
                                Barrier barrier = (Barrier) childAt;
                                barrier.setId(id);
                                barrier.setType(constraint.layout.mBarrierDirection);
                                barrier.setMargin(constraint.layout.mBarrierMargin);
                                barrier.setAllowsGoneWidget(constraint.layout.mBarrierAllowsGoneWidgets);
                                Layout layout = constraint.layout;
                                int[] iArr = layout.mReferenceIds;
                                if (iArr != null) {
                                    barrier.setReferencedIds(iArr);
                                } else {
                                    String str = layout.mReferenceIdString;
                                    if (str != null) {
                                        layout.mReferenceIds = m2169j(barrier, str);
                                        barrier.setReferencedIds(constraint.layout.mReferenceIds);
                                    }
                                }
                            }
                            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                            layoutParams.validate();
                            constraint.applyTo(layoutParams);
                            if (applyPostLayout) {
                                ConstraintAttribute.setAttributes(childAt, constraint.mCustomConstraints);
                            }
                            childAt.setLayoutParams(layoutParams);
                            PropertySet propertySet = constraint.propertySet;
                            if (propertySet.mVisibilityMode == 0) {
                                childAt.setVisibility(propertySet.visibility);
                            }
                            childAt.setAlpha(constraint.propertySet.alpha);
                            childAt.setRotation(constraint.transform.rotation);
                            childAt.setRotationX(constraint.transform.rotationX);
                            childAt.setRotationY(constraint.transform.rotationY);
                            childAt.setScaleX(constraint.transform.scaleX);
                            childAt.setScaleY(constraint.transform.scaleY);
                            Transform transform = constraint.transform;
                            if (transform.transformPivotTarget != -1) {
                                if (((View) childAt.getParent()).findViewById(constraint.transform.transformPivotTarget) != null) {
                                    float top = (r4.getTop() + r4.getBottom()) / 2.0f;
                                    float left = (r4.getLeft() + r4.getRight()) / 2.0f;
                                    if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                        childAt.setPivotX(left - childAt.getLeft());
                                        childAt.setPivotY(top - childAt.getTop());
                                    }
                                }
                            } else {
                                if (!Float.isNaN(transform.transformPivotX)) {
                                    childAt.setPivotX(constraint.transform.transformPivotX);
                                }
                                if (!Float.isNaN(constraint.transform.transformPivotY)) {
                                    childAt.setPivotY(constraint.transform.transformPivotY);
                                }
                            }
                            childAt.setTranslationX(constraint.transform.translationX);
                            childAt.setTranslationY(constraint.transform.translationY);
                            childAt.setTranslationZ(constraint.transform.translationZ);
                            Transform transform2 = constraint.transform;
                            if (transform2.applyElevation) {
                                childAt.setElevation(transform2.elevation);
                            }
                        }
                    } else {
                        Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id);
                    }
                }
            }
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            Integer num = (Integer) it2.next();
            Constraint constraint2 = this.f4516d.get(num);
            if (constraint2 != null) {
                if (constraint2.layout.mHelperType == 1) {
                    Barrier barrier2 = new Barrier(constraintLayout.getContext());
                    barrier2.setId(num.intValue());
                    Layout layout2 = constraint2.layout;
                    int[] iArr2 = layout2.mReferenceIds;
                    if (iArr2 != null) {
                        barrier2.setReferencedIds(iArr2);
                    } else {
                        String str2 = layout2.mReferenceIdString;
                        if (str2 != null) {
                            layout2.mReferenceIds = m2169j(barrier2, str2);
                            barrier2.setReferencedIds(constraint2.layout.mReferenceIds);
                        }
                    }
                    barrier2.setType(constraint2.layout.mBarrierDirection);
                    barrier2.setMargin(constraint2.layout.mBarrierMargin);
                    ConstraintLayout.LayoutParams generateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                    barrier2.validateParams();
                    constraint2.applyTo(generateDefaultLayoutParams);
                    constraintLayout.addView(barrier2, generateDefaultLayoutParams);
                }
                if (constraint2.layout.mIsGuideline) {
                    View guideline = new Guideline(constraintLayout.getContext());
                    guideline.setId(num.intValue());
                    ConstraintLayout.LayoutParams generateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                    constraint2.applyTo(generateDefaultLayoutParams2);
                    constraintLayout.addView(guideline, generateDefaultLayoutParams2);
                }
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt2 = constraintLayout.getChildAt(i2);
            if (childAt2 instanceof ConstraintHelper) {
                ((ConstraintHelper) childAt2).applyLayoutFeaturesInConstraintSet(constraintLayout);
            }
        }
    }

    public boolean isForceId() {
        return this.f4515c;
    }

    /* renamed from: j */
    public final int[] m2169j(View view, String referenceIdString) {
        int i;
        Object designInformation;
        String[] split = referenceIdString.split(",");
        Context context = view.getContext();
        int[] iArr = new int[split.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < split.length) {
            String trim = split[i2].trim();
            try {
                i = C0503R.id.class.getField(trim).getInt(null);
            } catch (Exception unused) {
                i = 0;
            }
            if (i == 0) {
                i = context.getResources().getIdentifier(trim, "id", context.getPackageName());
            }
            if (i == 0 && view.isInEditMode() && (view.getParent() instanceof ConstraintLayout) && (designInformation = ((ConstraintLayout) view.getParent()).getDesignInformation(0, trim)) != null && (designInformation instanceof Integer)) {
                i = ((Integer) designInformation).intValue();
            }
            iArr[i3] = i;
            i2++;
            i3++;
        }
        return i3 != split.length ? Arrays.copyOf(iArr, i3) : iArr;
    }

    /* renamed from: k */
    public final void m2170k(int leftId, int leftSide, int rightId, int rightSide, int[] chainIds, float[] weights, int style, int left, int right) {
        if (chainIds.length < 2) {
            throw new IllegalArgumentException("must have 2 or more widgets in a chain");
        }
        if (weights != null && weights.length != chainIds.length) {
            throw new IllegalArgumentException("must have 2 or more widgets in a chain");
        }
        if (weights != null) {
            m2172m(chainIds[0]).layout.horizontalWeight = weights[0];
        }
        m2172m(chainIds[0]).layout.horizontalChainStyle = style;
        connect(chainIds[0], left, leftId, leftSide, -1);
        for (int i = 1; i < chainIds.length; i++) {
            int i2 = i - 1;
            connect(chainIds[i], left, chainIds[i2], right, -1);
            connect(chainIds[i2], right, chainIds[i], left, -1);
            if (weights != null) {
                m2172m(chainIds[i]).layout.horizontalWeight = weights[i];
            }
        }
        connect(chainIds[chainIds.length - 1], right, rightId, rightSide, -1);
    }

    /* renamed from: l */
    public final Constraint m2171l(Context context, AttributeSet attrs, boolean override) {
        Constraint constraint = new Constraint();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, override ? C0503R.styleable.ConstraintOverride : C0503R.styleable.Constraint);
        m2173t(context, constraint, obtainStyledAttributes, override);
        obtainStyledAttributes.recycle();
        return constraint;
    }

    public void load(Context context, int resourceId) {
        XmlResourceParser xml = context.getResources().getXml(resourceId);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    Constraint m2171l = m2171l(context, Xml.asAttributeSet(xml), false);
                    if (name.equalsIgnoreCase("Guideline")) {
                        m2171l.layout.mIsGuideline = true;
                    }
                    this.f4516d.put(Integer.valueOf(m2171l.f4517a), m2171l);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: m */
    public final Constraint m2172m(int id) {
        if (!this.f4516d.containsKey(Integer.valueOf(id))) {
            this.f4516d.put(Integer.valueOf(id), new Constraint());
        }
        return this.f4516d.get(Integer.valueOf(id));
    }

    public void parseColorAttributes(Constraint set, String attributes) {
        String[] split = attributes.split(",");
        for (int i = 0; i < split.length; i++) {
            String[] split2 = split[i].split("=");
            if (split2.length != 2) {
                Log.w("ConstraintSet", " Unable to parse " + split[i]);
            } else {
                set.m2186l(split2[0], Color.parseColor(split2[1]));
            }
        }
    }

    public void parseFloatAttributes(Constraint set, String attributes) {
        String[] split = attributes.split(",");
        for (int i = 0; i < split.length; i++) {
            String[] split2 = split[i].split("=");
            if (split2.length != 2) {
                Log.w("ConstraintSet", " Unable to parse " + split[i]);
            } else {
                set.m2187m(split2[0], Float.parseFloat(split2[1]));
            }
        }
    }

    public void parseIntAttributes(Constraint set, String attributes) {
        String[] split = attributes.split(",");
        for (int i = 0; i < split.length; i++) {
            String[] split2 = split[i].split("=");
            if (split2.length != 2) {
                Log.w("ConstraintSet", " Unable to parse " + split[i]);
            } else {
                set.m2187m(split2[0], Integer.decode(split2[1]).intValue());
            }
        }
    }

    public void parseStringAttributes(Constraint set, String attributes) {
        String[] m2148A = m2148A(attributes);
        for (int i = 0; i < m2148A.length; i++) {
            String[] split = m2148A[i].split("=");
            Log.w("ConstraintSet", " Unable to parse " + m2148A[i]);
            set.m2189o(split[0], split[1]);
        }
    }

    public void readFallback(ConstraintSet set) {
        for (Integer num : set.f4516d.keySet()) {
            int intValue = num.intValue();
            Constraint constraint = set.f4516d.get(num);
            if (!this.f4516d.containsKey(Integer.valueOf(intValue))) {
                this.f4516d.put(Integer.valueOf(intValue), new Constraint());
            }
            Constraint constraint2 = this.f4516d.get(Integer.valueOf(intValue));
            if (constraint2 != null) {
                Layout layout = constraint2.layout;
                if (!layout.mApply) {
                    layout.copyFrom(constraint.layout);
                }
                PropertySet propertySet = constraint2.propertySet;
                if (!propertySet.mApply) {
                    propertySet.copyFrom(constraint.propertySet);
                }
                Transform transform = constraint2.transform;
                if (!transform.mApply) {
                    transform.copyFrom(constraint.transform);
                }
                Motion motion = constraint2.motion;
                if (!motion.mApply) {
                    motion.copyFrom(constraint.motion);
                }
                for (String str : constraint.mCustomConstraints.keySet()) {
                    if (!constraint2.mCustomConstraints.containsKey(str)) {
                        constraint2.mCustomConstraints.put(str, constraint.mCustomConstraints.get(str));
                    }
                }
            }
        }
    }

    public void removeAttribute(String attributeName) {
        this.f4514b.remove(attributeName);
    }

    public void removeFromHorizontalChain(int viewId) {
        Constraint constraint;
        if (!this.f4516d.containsKey(Integer.valueOf(viewId)) || (constraint = this.f4516d.get(Integer.valueOf(viewId))) == null) {
            return;
        }
        Layout layout = constraint.layout;
        int i = layout.leftToRight;
        int i2 = layout.rightToLeft;
        if (i != -1 || i2 != -1) {
            if (i == -1 || i2 == -1) {
                int i3 = layout.rightToRight;
                if (i3 != -1) {
                    connect(i, 2, i3, 2, 0);
                } else {
                    int i4 = layout.leftToLeft;
                    if (i4 != -1) {
                        connect(i2, 1, i4, 1, 0);
                    }
                }
            } else {
                connect(i, 2, i2, 1, 0);
                connect(i2, 1, i, 2, 0);
            }
            clear(viewId, 1);
            clear(viewId, 2);
            return;
        }
        int i5 = layout.startToEnd;
        int i6 = layout.endToStart;
        if (i5 != -1 || i6 != -1) {
            if (i5 != -1 && i6 != -1) {
                connect(i5, 7, i6, 6, 0);
                connect(i6, 6, i, 7, 0);
            } else if (i6 != -1) {
                int i7 = layout.rightToRight;
                if (i7 != -1) {
                    connect(i, 7, i7, 7, 0);
                } else {
                    int i8 = layout.leftToLeft;
                    if (i8 != -1) {
                        connect(i6, 6, i8, 6, 0);
                    }
                }
            }
        }
        clear(viewId, 6);
        clear(viewId, 7);
    }

    public void removeFromVerticalChain(int viewId) {
        if (this.f4516d.containsKey(Integer.valueOf(viewId))) {
            Constraint constraint = this.f4516d.get(Integer.valueOf(viewId));
            if (constraint == null) {
                return;
            }
            Layout layout = constraint.layout;
            int i = layout.topToBottom;
            int i2 = layout.bottomToTop;
            if (i != -1 || i2 != -1) {
                if (i == -1 || i2 == -1) {
                    int i3 = layout.bottomToBottom;
                    if (i3 != -1) {
                        connect(i, 4, i3, 4, 0);
                    } else {
                        int i4 = layout.topToTop;
                        if (i4 != -1) {
                            connect(i2, 3, i4, 3, 0);
                        }
                    }
                } else {
                    connect(i, 4, i2, 3, 0);
                    connect(i2, 3, i, 4, 0);
                }
            }
        }
        clear(viewId, 3);
        clear(viewId, 4);
    }

    public void setAlpha(int viewId, float alpha) {
        m2172m(viewId).propertySet.alpha = alpha;
    }

    public void setApplyElevation(int viewId, boolean apply) {
        m2172m(viewId).transform.applyElevation = apply;
    }

    public void setBarrierType(int id, int type) {
        m2172m(id).layout.mHelperType = type;
    }

    public void setColorValue(int viewId, String attributeName, int value) {
        m2172m(viewId).m2186l(attributeName, value);
    }

    public void setDimensionRatio(int viewId, String ratio) {
        m2172m(viewId).layout.dimensionRatio = ratio;
    }

    public void setEditorAbsoluteX(int viewId, int position) {
        m2172m(viewId).layout.editorAbsoluteX = position;
    }

    public void setEditorAbsoluteY(int viewId, int position) {
        m2172m(viewId).layout.editorAbsoluteY = position;
    }

    public void setElevation(int viewId, float elevation) {
        m2172m(viewId).transform.elevation = elevation;
        m2172m(viewId).transform.applyElevation = true;
    }

    public void setFloatValue(int viewId, String attributeName, float value) {
        m2172m(viewId).m2187m(attributeName, value);
    }

    public void setForceId(boolean forceId) {
        this.f4515c = forceId;
    }

    public void setGoneMargin(int viewId, int anchor, int value) {
        Constraint m2172m = m2172m(viewId);
        switch (anchor) {
            case 1:
                m2172m.layout.goneLeftMargin = value;
                return;
            case 2:
                m2172m.layout.goneRightMargin = value;
                return;
            case 3:
                m2172m.layout.goneTopMargin = value;
                return;
            case 4:
                m2172m.layout.goneBottomMargin = value;
                return;
            case 5:
                m2172m.layout.goneBaselineMargin = value;
                return;
            case 6:
                m2172m.layout.goneStartMargin = value;
                return;
            case 7:
                m2172m.layout.goneEndMargin = value;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public void setGuidelineBegin(int guidelineID, int margin) {
        m2172m(guidelineID).layout.guideBegin = margin;
        m2172m(guidelineID).layout.guideEnd = -1;
        m2172m(guidelineID).layout.guidePercent = -1.0f;
    }

    public void setGuidelineEnd(int guidelineID, int margin) {
        m2172m(guidelineID).layout.guideEnd = margin;
        m2172m(guidelineID).layout.guideBegin = -1;
        m2172m(guidelineID).layout.guidePercent = -1.0f;
    }

    public void setGuidelinePercent(int guidelineID, float ratio) {
        m2172m(guidelineID).layout.guidePercent = ratio;
        m2172m(guidelineID).layout.guideEnd = -1;
        m2172m(guidelineID).layout.guideBegin = -1;
    }

    public void setHorizontalBias(int viewId, float bias) {
        m2172m(viewId).layout.horizontalBias = bias;
    }

    public void setHorizontalChainStyle(int viewId, int chainStyle) {
        m2172m(viewId).layout.horizontalChainStyle = chainStyle;
    }

    public void setHorizontalWeight(int viewId, float weight) {
        m2172m(viewId).layout.horizontalWeight = weight;
    }

    public void setIntValue(int viewId, String attributeName, int value) {
        m2172m(viewId).m2188n(attributeName, value);
    }

    public void setLayoutWrapBehavior(int viewId, int behavior) {
        if (behavior < 0 || behavior > 3) {
            return;
        }
        m2172m(viewId).layout.mWrapBehavior = behavior;
    }

    public void setMargin(int viewId, int anchor, int value) {
        Constraint m2172m = m2172m(viewId);
        switch (anchor) {
            case 1:
                m2172m.layout.leftMargin = value;
                return;
            case 2:
                m2172m.layout.rightMargin = value;
                return;
            case 3:
                m2172m.layout.topMargin = value;
                return;
            case 4:
                m2172m.layout.bottomMargin = value;
                return;
            case 5:
                m2172m.layout.baselineMargin = value;
                return;
            case 6:
                m2172m.layout.startMargin = value;
                return;
            case 7:
                m2172m.layout.endMargin = value;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public void setReferencedIds(int id, int... referenced) {
        m2172m(id).layout.mReferenceIds = referenced;
    }

    public void setRotation(int viewId, float rotation) {
        m2172m(viewId).transform.rotation = rotation;
    }

    public void setRotationX(int viewId, float rotationX) {
        m2172m(viewId).transform.rotationX = rotationX;
    }

    public void setRotationY(int viewId, float rotationY) {
        m2172m(viewId).transform.rotationY = rotationY;
    }

    public void setScaleX(int viewId, float scaleX) {
        m2172m(viewId).transform.scaleX = scaleX;
    }

    public void setScaleY(int viewId, float scaleY) {
        m2172m(viewId).transform.scaleY = scaleY;
    }

    public void setStringValue(int viewId, String attributeName, String value) {
        m2172m(viewId).m2189o(attributeName, value);
    }

    public void setTransformPivot(int viewId, float transformPivotX, float transformPivotY) {
        Transform transform = m2172m(viewId).transform;
        transform.transformPivotY = transformPivotY;
        transform.transformPivotX = transformPivotX;
    }

    public void setTransformPivotX(int viewId, float transformPivotX) {
        m2172m(viewId).transform.transformPivotX = transformPivotX;
    }

    public void setTransformPivotY(int viewId, float transformPivotY) {
        m2172m(viewId).transform.transformPivotY = transformPivotY;
    }

    public void setTranslation(int viewId, float translationX, float translationY) {
        Transform transform = m2172m(viewId).transform;
        transform.translationX = translationX;
        transform.translationY = translationY;
    }

    public void setTranslationX(int viewId, float translationX) {
        m2172m(viewId).transform.translationX = translationX;
    }

    public void setTranslationY(int viewId, float translationY) {
        m2172m(viewId).transform.translationY = translationY;
    }

    public void setTranslationZ(int viewId, float translationZ) {
        m2172m(viewId).transform.translationZ = translationZ;
    }

    public void setValidateOnParse(boolean validate) {
        this.f4513a = validate;
    }

    public void setVerticalBias(int viewId, float bias) {
        m2172m(viewId).layout.verticalBias = bias;
    }

    public void setVerticalChainStyle(int viewId, int chainStyle) {
        m2172m(viewId).layout.verticalChainStyle = chainStyle;
    }

    public void setVerticalWeight(int viewId, float weight) {
        m2172m(viewId).layout.verticalWeight = weight;
    }

    public void setVisibility(int viewId, int visibility) {
        m2172m(viewId).propertySet.visibility = visibility;
    }

    public void setVisibilityMode(int viewId, int visibilityMode) {
        m2172m(viewId).propertySet.mVisibilityMode = visibilityMode;
    }

    /* renamed from: t */
    public final void m2173t(Context ctx, Constraint c, TypedArray a, boolean override) {
        if (override) {
            m2162u(ctx, c, a);
            return;
        }
        int indexCount = a.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = a.getIndex(i);
            if (index != C0503R.styleable.Constraint_android_id && C0503R.styleable.Constraint_android_layout_marginStart != index && C0503R.styleable.Constraint_android_layout_marginEnd != index) {
                c.motion.mApply = true;
                c.layout.mApply = true;
                c.propertySet.mApply = true;
                c.transform.mApply = true;
            }
            switch (f4487n.get(index)) {
                case 1:
                    Layout layout = c.layout;
                    layout.baselineToBaseline = m2158p(a, index, layout.baselineToBaseline);
                    break;
                case 2:
                    Layout layout2 = c.layout;
                    layout2.bottomMargin = a.getDimensionPixelSize(index, layout2.bottomMargin);
                    break;
                case 3:
                    Layout layout3 = c.layout;
                    layout3.bottomToBottom = m2158p(a, index, layout3.bottomToBottom);
                    break;
                case 4:
                    Layout layout4 = c.layout;
                    layout4.bottomToTop = m2158p(a, index, layout4.bottomToTop);
                    break;
                case 5:
                    c.layout.dimensionRatio = a.getString(index);
                    break;
                case 6:
                    Layout layout5 = c.layout;
                    layout5.editorAbsoluteX = a.getDimensionPixelOffset(index, layout5.editorAbsoluteX);
                    break;
                case 7:
                    Layout layout6 = c.layout;
                    layout6.editorAbsoluteY = a.getDimensionPixelOffset(index, layout6.editorAbsoluteY);
                    break;
                case 8:
                    Layout layout7 = c.layout;
                    layout7.endMargin = a.getDimensionPixelSize(index, layout7.endMargin);
                    break;
                case 9:
                    Layout layout8 = c.layout;
                    layout8.endToEnd = m2158p(a, index, layout8.endToEnd);
                    break;
                case 10:
                    Layout layout9 = c.layout;
                    layout9.endToStart = m2158p(a, index, layout9.endToStart);
                    break;
                case 11:
                    Layout layout10 = c.layout;
                    layout10.goneBottomMargin = a.getDimensionPixelSize(index, layout10.goneBottomMargin);
                    break;
                case 12:
                    Layout layout11 = c.layout;
                    layout11.goneEndMargin = a.getDimensionPixelSize(index, layout11.goneEndMargin);
                    break;
                case 13:
                    Layout layout12 = c.layout;
                    layout12.goneLeftMargin = a.getDimensionPixelSize(index, layout12.goneLeftMargin);
                    break;
                case 14:
                    Layout layout13 = c.layout;
                    layout13.goneRightMargin = a.getDimensionPixelSize(index, layout13.goneRightMargin);
                    break;
                case 15:
                    Layout layout14 = c.layout;
                    layout14.goneStartMargin = a.getDimensionPixelSize(index, layout14.goneStartMargin);
                    break;
                case 16:
                    Layout layout15 = c.layout;
                    layout15.goneTopMargin = a.getDimensionPixelSize(index, layout15.goneTopMargin);
                    break;
                case 17:
                    Layout layout16 = c.layout;
                    layout16.guideBegin = a.getDimensionPixelOffset(index, layout16.guideBegin);
                    break;
                case 18:
                    Layout layout17 = c.layout;
                    layout17.guideEnd = a.getDimensionPixelOffset(index, layout17.guideEnd);
                    break;
                case 19:
                    Layout layout18 = c.layout;
                    layout18.guidePercent = a.getFloat(index, layout18.guidePercent);
                    break;
                case 20:
                    Layout layout19 = c.layout;
                    layout19.horizontalBias = a.getFloat(index, layout19.horizontalBias);
                    break;
                case 21:
                    Layout layout20 = c.layout;
                    layout20.mHeight = a.getLayoutDimension(index, layout20.mHeight);
                    break;
                case 22:
                    PropertySet propertySet = c.propertySet;
                    propertySet.visibility = a.getInt(index, propertySet.visibility);
                    PropertySet propertySet2 = c.propertySet;
                    propertySet2.visibility = f4481l[propertySet2.visibility];
                    break;
                case 23:
                    Layout layout21 = c.layout;
                    layout21.mWidth = a.getLayoutDimension(index, layout21.mWidth);
                    break;
                case 24:
                    Layout layout22 = c.layout;
                    layout22.leftMargin = a.getDimensionPixelSize(index, layout22.leftMargin);
                    break;
                case 25:
                    Layout layout23 = c.layout;
                    layout23.leftToLeft = m2158p(a, index, layout23.leftToLeft);
                    break;
                case 26:
                    Layout layout24 = c.layout;
                    layout24.leftToRight = m2158p(a, index, layout24.leftToRight);
                    break;
                case 27:
                    Layout layout25 = c.layout;
                    layout25.orientation = a.getInt(index, layout25.orientation);
                    break;
                case 28:
                    Layout layout26 = c.layout;
                    layout26.rightMargin = a.getDimensionPixelSize(index, layout26.rightMargin);
                    break;
                case 29:
                    Layout layout27 = c.layout;
                    layout27.rightToLeft = m2158p(a, index, layout27.rightToLeft);
                    break;
                case 30:
                    Layout layout28 = c.layout;
                    layout28.rightToRight = m2158p(a, index, layout28.rightToRight);
                    break;
                case 31:
                    Layout layout29 = c.layout;
                    layout29.startMargin = a.getDimensionPixelSize(index, layout29.startMargin);
                    break;
                case 32:
                    Layout layout30 = c.layout;
                    layout30.startToEnd = m2158p(a, index, layout30.startToEnd);
                    break;
                case 33:
                    Layout layout31 = c.layout;
                    layout31.startToStart = m2158p(a, index, layout31.startToStart);
                    break;
                case 34:
                    Layout layout32 = c.layout;
                    layout32.topMargin = a.getDimensionPixelSize(index, layout32.topMargin);
                    break;
                case 35:
                    Layout layout33 = c.layout;
                    layout33.topToBottom = m2158p(a, index, layout33.topToBottom);
                    break;
                case 36:
                    Layout layout34 = c.layout;
                    layout34.topToTop = m2158p(a, index, layout34.topToTop);
                    break;
                case 37:
                    Layout layout35 = c.layout;
                    layout35.verticalBias = a.getFloat(index, layout35.verticalBias);
                    break;
                case 38:
                    c.f4517a = a.getResourceId(index, c.f4517a);
                    break;
                case 39:
                    Layout layout36 = c.layout;
                    layout36.horizontalWeight = a.getFloat(index, layout36.horizontalWeight);
                    break;
                case 40:
                    Layout layout37 = c.layout;
                    layout37.verticalWeight = a.getFloat(index, layout37.verticalWeight);
                    break;
                case 41:
                    Layout layout38 = c.layout;
                    layout38.horizontalChainStyle = a.getInt(index, layout38.horizontalChainStyle);
                    break;
                case 42:
                    Layout layout39 = c.layout;
                    layout39.verticalChainStyle = a.getInt(index, layout39.verticalChainStyle);
                    break;
                case 43:
                    PropertySet propertySet3 = c.propertySet;
                    propertySet3.alpha = a.getFloat(index, propertySet3.alpha);
                    break;
                case 44:
                    Transform transform = c.transform;
                    transform.applyElevation = true;
                    transform.elevation = a.getDimension(index, transform.elevation);
                    break;
                case 45:
                    Transform transform2 = c.transform;
                    transform2.rotationX = a.getFloat(index, transform2.rotationX);
                    break;
                case 46:
                    Transform transform3 = c.transform;
                    transform3.rotationY = a.getFloat(index, transform3.rotationY);
                    break;
                case 47:
                    Transform transform4 = c.transform;
                    transform4.scaleX = a.getFloat(index, transform4.scaleX);
                    break;
                case 48:
                    Transform transform5 = c.transform;
                    transform5.scaleY = a.getFloat(index, transform5.scaleY);
                    break;
                case 49:
                    Transform transform6 = c.transform;
                    transform6.transformPivotX = a.getDimension(index, transform6.transformPivotX);
                    break;
                case 50:
                    Transform transform7 = c.transform;
                    transform7.transformPivotY = a.getDimension(index, transform7.transformPivotY);
                    break;
                case 51:
                    Transform transform8 = c.transform;
                    transform8.translationX = a.getDimension(index, transform8.translationX);
                    break;
                case 52:
                    Transform transform9 = c.transform;
                    transform9.translationY = a.getDimension(index, transform9.translationY);
                    break;
                case 53:
                    Transform transform10 = c.transform;
                    transform10.translationZ = a.getDimension(index, transform10.translationZ);
                    break;
                case 54:
                    Layout layout40 = c.layout;
                    layout40.widthDefault = a.getInt(index, layout40.widthDefault);
                    break;
                case 55:
                    Layout layout41 = c.layout;
                    layout41.heightDefault = a.getInt(index, layout41.heightDefault);
                    break;
                case 56:
                    Layout layout42 = c.layout;
                    layout42.widthMax = a.getDimensionPixelSize(index, layout42.widthMax);
                    break;
                case 57:
                    Layout layout43 = c.layout;
                    layout43.heightMax = a.getDimensionPixelSize(index, layout43.heightMax);
                    break;
                case 58:
                    Layout layout44 = c.layout;
                    layout44.widthMin = a.getDimensionPixelSize(index, layout44.widthMin);
                    break;
                case 59:
                    Layout layout45 = c.layout;
                    layout45.heightMin = a.getDimensionPixelSize(index, layout45.heightMin);
                    break;
                case 60:
                    Transform transform11 = c.transform;
                    transform11.rotation = a.getFloat(index, transform11.rotation);
                    break;
                case 61:
                    Layout layout46 = c.layout;
                    layout46.circleConstraint = m2158p(a, index, layout46.circleConstraint);
                    break;
                case 62:
                    Layout layout47 = c.layout;
                    layout47.circleRadius = a.getDimensionPixelSize(index, layout47.circleRadius);
                    break;
                case 63:
                    Layout layout48 = c.layout;
                    layout48.circleAngle = a.getFloat(index, layout48.circleAngle);
                    break;
                case 64:
                    Motion motion = c.motion;
                    motion.mAnimateRelativeTo = m2158p(a, index, motion.mAnimateRelativeTo);
                    break;
                case 65:
                    if (a.peekValue(index).type == 3) {
                        c.motion.mTransitionEasing = a.getString(index);
                        break;
                    } else {
                        c.motion.mTransitionEasing = Easing.NAMED_EASING[a.getInteger(index, 0)];
                        break;
                    }
                case 66:
                    c.motion.mDrawPath = a.getInt(index, 0);
                    break;
                case 67:
                    Motion motion2 = c.motion;
                    motion2.mPathRotate = a.getFloat(index, motion2.mPathRotate);
                    break;
                case 68:
                    PropertySet propertySet4 = c.propertySet;
                    propertySet4.mProgress = a.getFloat(index, propertySet4.mProgress);
                    break;
                case 69:
                    c.layout.widthPercent = a.getFloat(index, 1.0f);
                    break;
                case 70:
                    c.layout.heightPercent = a.getFloat(index, 1.0f);
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    Layout layout49 = c.layout;
                    layout49.mBarrierDirection = a.getInt(index, layout49.mBarrierDirection);
                    break;
                case 73:
                    Layout layout50 = c.layout;
                    layout50.mBarrierMargin = a.getDimensionPixelSize(index, layout50.mBarrierMargin);
                    break;
                case 74:
                    c.layout.mReferenceIdString = a.getString(index);
                    break;
                case 75:
                    Layout layout51 = c.layout;
                    layout51.mBarrierAllowsGoneWidgets = a.getBoolean(index, layout51.mBarrierAllowsGoneWidgets);
                    break;
                case 76:
                    Motion motion3 = c.motion;
                    motion3.mPathMotionArc = a.getInt(index, motion3.mPathMotionArc);
                    break;
                case 77:
                    c.layout.mConstraintTag = a.getString(index);
                    break;
                case 78:
                    PropertySet propertySet5 = c.propertySet;
                    propertySet5.mVisibilityMode = a.getInt(index, propertySet5.mVisibilityMode);
                    break;
                case 79:
                    Motion motion4 = c.motion;
                    motion4.mMotionStagger = a.getFloat(index, motion4.mMotionStagger);
                    break;
                case 80:
                    Layout layout52 = c.layout;
                    layout52.constrainedWidth = a.getBoolean(index, layout52.constrainedWidth);
                    break;
                case 81:
                    Layout layout53 = c.layout;
                    layout53.constrainedHeight = a.getBoolean(index, layout53.constrainedHeight);
                    break;
                case 82:
                    Motion motion5 = c.motion;
                    motion5.mAnimateCircleAngleTo = a.getInteger(index, motion5.mAnimateCircleAngleTo);
                    break;
                case 83:
                    Transform transform12 = c.transform;
                    transform12.transformPivotTarget = m2158p(a, index, transform12.transformPivotTarget);
                    break;
                case 84:
                    Motion motion6 = c.motion;
                    motion6.mQuantizeMotionSteps = a.getInteger(index, motion6.mQuantizeMotionSteps);
                    break;
                case 85:
                    Motion motion7 = c.motion;
                    motion7.mQuantizeMotionPhase = a.getFloat(index, motion7.mQuantizeMotionPhase);
                    break;
                case 86:
                    int i2 = a.peekValue(index).type;
                    if (i2 == 1) {
                        c.motion.mQuantizeInterpolatorID = a.getResourceId(index, -1);
                        Motion motion8 = c.motion;
                        if (motion8.mQuantizeInterpolatorID != -1) {
                            motion8.mQuantizeInterpolatorType = -2;
                            break;
                        } else {
                            break;
                        }
                    } else if (i2 == 3) {
                        c.motion.mQuantizeInterpolatorString = a.getString(index);
                        if (c.motion.mQuantizeInterpolatorString.indexOf("/") > 0) {
                            c.motion.mQuantizeInterpolatorID = a.getResourceId(index, -1);
                            c.motion.mQuantizeInterpolatorType = -2;
                            break;
                        } else {
                            c.motion.mQuantizeInterpolatorType = -1;
                            break;
                        }
                    } else {
                        Motion motion9 = c.motion;
                        motion9.mQuantizeInterpolatorType = a.getInteger(index, motion9.mQuantizeInterpolatorID);
                        break;
                    }
                case 87:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f4487n.get(index));
                    break;
                case 88:
                case 89:
                case 90:
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f4487n.get(index));
                    break;
                case 91:
                    Layout layout54 = c.layout;
                    layout54.baselineToTop = m2158p(a, index, layout54.baselineToTop);
                    break;
                case 92:
                    Layout layout55 = c.layout;
                    layout55.baselineToBottom = m2158p(a, index, layout55.baselineToBottom);
                    break;
                case 93:
                    Layout layout56 = c.layout;
                    layout56.baselineMargin = a.getDimensionPixelSize(index, layout56.baselineMargin);
                    break;
                case 94:
                    Layout layout57 = c.layout;
                    layout57.goneBaselineMargin = a.getDimensionPixelSize(index, layout57.goneBaselineMargin);
                    break;
                case 95:
                    m2159q(c.layout, a, index, 0);
                    break;
                case 96:
                    m2159q(c.layout, a, index, 1);
                    break;
                case 97:
                    Layout layout58 = c.layout;
                    layout58.mWrapBehavior = a.getInt(index, layout58.mWrapBehavior);
                    break;
            }
        }
        Layout layout59 = c.layout;
        if (layout59.mReferenceIdString != null) {
            layout59.mReferenceIds = null;
        }
    }

    public void writeState(Writer writer, ConstraintLayout layout, int flags) throws IOException {
        writer.write("\n---------------------------------------------\n");
        if ((flags & 1) == 1) {
            new C0502b(writer, layout, flags).m2222i();
        } else {
            new C0501a(writer, layout, flags).m2206g();
        }
        writer.write("\n---------------------------------------------\n");
    }

    /* renamed from: z */
    public final String m2174z(int side) {
        switch (side) {
            case 1:
                return "left";
            case 2:
                return gon.f71288n0;
            case 3:
                return OneDriverConstants.TOP;
            case 4:
                return "bottom";
            case 5:
                return "baseline";
            case 6:
                return gon.f71290o0;
            case 7:
                return "end";
            default:
                return OcrValues.ENGINE_UNDEFINED;
        }
    }

    public void clear(int viewId, int anchor) {
        Constraint constraint;
        if (!this.f4516d.containsKey(Integer.valueOf(viewId)) || (constraint = this.f4516d.get(Integer.valueOf(viewId))) == null) {
            return;
        }
        switch (anchor) {
            case 1:
                Layout layout = constraint.layout;
                layout.leftToRight = -1;
                layout.leftToLeft = -1;
                layout.leftMargin = -1;
                layout.goneLeftMargin = Integer.MIN_VALUE;
                return;
            case 2:
                Layout layout2 = constraint.layout;
                layout2.rightToRight = -1;
                layout2.rightToLeft = -1;
                layout2.rightMargin = -1;
                layout2.goneRightMargin = Integer.MIN_VALUE;
                return;
            case 3:
                Layout layout3 = constraint.layout;
                layout3.topToBottom = -1;
                layout3.topToTop = -1;
                layout3.topMargin = 0;
                layout3.goneTopMargin = Integer.MIN_VALUE;
                return;
            case 4:
                Layout layout4 = constraint.layout;
                layout4.bottomToTop = -1;
                layout4.bottomToBottom = -1;
                layout4.bottomMargin = 0;
                layout4.goneBottomMargin = Integer.MIN_VALUE;
                return;
            case 5:
                Layout layout5 = constraint.layout;
                layout5.baselineToBaseline = -1;
                layout5.baselineToTop = -1;
                layout5.baselineToBottom = -1;
                layout5.baselineMargin = 0;
                layout5.goneBaselineMargin = Integer.MIN_VALUE;
                return;
            case 6:
                Layout layout6 = constraint.layout;
                layout6.startToEnd = -1;
                layout6.startToStart = -1;
                layout6.startMargin = 0;
                layout6.goneStartMargin = Integer.MIN_VALUE;
                return;
            case 7:
                Layout layout7 = constraint.layout;
                layout7.endToStart = -1;
                layout7.endToEnd = -1;
                layout7.endMargin = 0;
                layout7.goneEndMargin = Integer.MIN_VALUE;
                return;
            case 8:
                Layout layout8 = constraint.layout;
                layout8.circleAngle = -1.0f;
                layout8.circleRadius = -1;
                layout8.circleConstraint = -1;
                return;
            default:
                throw new IllegalArgumentException("unknown constraint");
        }
    }

    public void clone(ConstraintSet set) {
        this.f4516d.clear();
        for (Integer num : set.f4516d.keySet()) {
            Constraint constraint = set.f4516d.get(num);
            if (constraint != null) {
                this.f4516d.put(num, constraint.m72119clone());
            }
        }
    }

    public void centerHorizontally(int viewId, int toView) {
        if (toView == 0) {
            center(viewId, 0, 1, 0, 0, 2, 0, 0.5f);
        } else {
            center(viewId, toView, 2, 0, toView, 1, 0, 0.5f);
        }
    }

    public void centerHorizontallyRtl(int viewId, int toView) {
        if (toView == 0) {
            center(viewId, 0, 6, 0, 0, 7, 0, 0.5f);
        } else {
            center(viewId, toView, 7, 0, toView, 6, 0, 0.5f);
        }
    }

    public void centerVertically(int viewId, int toView) {
        if (toView == 0) {
            center(viewId, 0, 3, 0, 0, 4, 0, 0.5f);
        } else {
            center(viewId, toView, 4, 0, toView, 3, 0, 0.5f);
        }
    }

    public void clone(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        this.f4516d.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f4515c && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f4516d.containsKey(Integer.valueOf(id))) {
                this.f4516d.put(Integer.valueOf(id), new Constraint());
            }
            Constraint constraint = this.f4516d.get(Integer.valueOf(id));
            if (constraint != null) {
                constraint.mCustomConstraints = ConstraintAttribute.extractAttributes(this.f4514b, childAt);
                constraint.m2182h(id, layoutParams);
                constraint.propertySet.visibility = childAt.getVisibility();
                constraint.propertySet.alpha = childAt.getAlpha();
                constraint.transform.rotation = childAt.getRotation();
                constraint.transform.rotationX = childAt.getRotationX();
                constraint.transform.rotationY = childAt.getRotationY();
                constraint.transform.scaleX = childAt.getScaleX();
                constraint.transform.scaleY = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    Transform transform = constraint.transform;
                    transform.transformPivotX = pivotX;
                    transform.transformPivotY = pivotY;
                }
                constraint.transform.translationX = childAt.getTranslationX();
                constraint.transform.translationY = childAt.getTranslationY();
                constraint.transform.translationZ = childAt.getTranslationZ();
                Transform transform2 = constraint.transform;
                if (transform2.applyElevation) {
                    transform2.elevation = childAt.getElevation();
                }
                if (childAt instanceof Barrier) {
                    Barrier barrier = (Barrier) childAt;
                    constraint.layout.mBarrierAllowsGoneWidgets = barrier.getAllowsGoneWidget();
                    constraint.layout.mReferenceIds = barrier.getReferencedIds();
                    constraint.layout.mBarrierDirection = barrier.getType();
                    constraint.layout.mBarrierMargin = barrier.getMargin();
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:0x01cb, code lost:
    
        continue;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:42:0x00db. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void load(android.content.Context r10, org.xmlpull.v1.XmlPullParser r11) {
        /*
            Method dump skipped, instructions count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintSet.load(android.content.Context, org.xmlpull.v1.XmlPullParser):void");
    }

    public void readFallback(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f4515c && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f4516d.containsKey(Integer.valueOf(id))) {
                this.f4516d.put(Integer.valueOf(id), new Constraint());
            }
            Constraint constraint = this.f4516d.get(Integer.valueOf(id));
            if (constraint != null) {
                if (!constraint.layout.mApply) {
                    constraint.m2182h(id, layoutParams);
                    if (childAt instanceof ConstraintHelper) {
                        constraint.layout.mReferenceIds = ((ConstraintHelper) childAt).getReferencedIds();
                        if (childAt instanceof Barrier) {
                            Barrier barrier = (Barrier) childAt;
                            constraint.layout.mBarrierAllowsGoneWidgets = barrier.getAllowsGoneWidget();
                            constraint.layout.mBarrierDirection = barrier.getType();
                            constraint.layout.mBarrierMargin = barrier.getMargin();
                        }
                    }
                    constraint.layout.mApply = true;
                }
                PropertySet propertySet = constraint.propertySet;
                if (!propertySet.mApply) {
                    propertySet.visibility = childAt.getVisibility();
                    constraint.propertySet.alpha = childAt.getAlpha();
                    constraint.propertySet.mApply = true;
                }
                Transform transform = constraint.transform;
                if (!transform.mApply) {
                    transform.mApply = true;
                    transform.rotation = childAt.getRotation();
                    constraint.transform.rotationX = childAt.getRotationX();
                    constraint.transform.rotationY = childAt.getRotationY();
                    constraint.transform.scaleX = childAt.getScaleX();
                    constraint.transform.scaleY = childAt.getScaleY();
                    float pivotX = childAt.getPivotX();
                    float pivotY = childAt.getPivotY();
                    if (pivotX != 0.0d || pivotY != 0.0d) {
                        Transform transform2 = constraint.transform;
                        transform2.transformPivotX = pivotX;
                        transform2.transformPivotY = pivotY;
                    }
                    constraint.transform.translationX = childAt.getTranslationX();
                    constraint.transform.translationY = childAt.getTranslationY();
                    constraint.transform.translationZ = childAt.getTranslationZ();
                    Transform transform3 = constraint.transform;
                    if (transform3.applyElevation) {
                        transform3.elevation = childAt.getElevation();
                    }
                }
            }
        }
    }

    public void clone(Constraints constraints) {
        int childCount = constraints.getChildCount();
        this.f4516d.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraints.getChildAt(i);
            Constraints.LayoutParams layoutParams = (Constraints.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f4515c && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f4516d.containsKey(Integer.valueOf(id))) {
                this.f4516d.put(Integer.valueOf(id), new Constraint());
            }
            Constraint constraint = this.f4516d.get(Integer.valueOf(id));
            if (constraint != null) {
                if (childAt instanceof ConstraintHelper) {
                    constraint.m2184j((ConstraintHelper) childAt, id, layoutParams);
                }
                constraint.m2183i(id, layoutParams);
            }
        }
    }

    public void connect(int startID, int startSide, int endID, int endSide) {
        if (!this.f4516d.containsKey(Integer.valueOf(startID))) {
            this.f4516d.put(Integer.valueOf(startID), new Constraint());
        }
        Constraint constraint = this.f4516d.get(Integer.valueOf(startID));
        if (constraint == null) {
            return;
        }
        switch (startSide) {
            case 1:
                if (endSide == 1) {
                    Layout layout = constraint.layout;
                    layout.leftToLeft = endID;
                    layout.leftToRight = -1;
                    return;
                } else if (endSide == 2) {
                    Layout layout2 = constraint.layout;
                    layout2.leftToRight = endID;
                    layout2.leftToLeft = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("left to " + m2174z(endSide) + " undefined");
                }
            case 2:
                if (endSide == 1) {
                    Layout layout3 = constraint.layout;
                    layout3.rightToLeft = endID;
                    layout3.rightToRight = -1;
                    return;
                } else if (endSide == 2) {
                    Layout layout4 = constraint.layout;
                    layout4.rightToRight = endID;
                    layout4.rightToLeft = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + m2174z(endSide) + " undefined");
                }
            case 3:
                if (endSide == 3) {
                    Layout layout5 = constraint.layout;
                    layout5.topToTop = endID;
                    layout5.topToBottom = -1;
                    layout5.baselineToBaseline = -1;
                    layout5.baselineToTop = -1;
                    layout5.baselineToBottom = -1;
                    return;
                }
                if (endSide == 4) {
                    Layout layout6 = constraint.layout;
                    layout6.topToBottom = endID;
                    layout6.topToTop = -1;
                    layout6.baselineToBaseline = -1;
                    layout6.baselineToTop = -1;
                    layout6.baselineToBottom = -1;
                    return;
                }
                throw new IllegalArgumentException("right to " + m2174z(endSide) + " undefined");
            case 4:
                if (endSide == 4) {
                    Layout layout7 = constraint.layout;
                    layout7.bottomToBottom = endID;
                    layout7.bottomToTop = -1;
                    layout7.baselineToBaseline = -1;
                    layout7.baselineToTop = -1;
                    layout7.baselineToBottom = -1;
                    return;
                }
                if (endSide == 3) {
                    Layout layout8 = constraint.layout;
                    layout8.bottomToTop = endID;
                    layout8.bottomToBottom = -1;
                    layout8.baselineToBaseline = -1;
                    layout8.baselineToTop = -1;
                    layout8.baselineToBottom = -1;
                    return;
                }
                throw new IllegalArgumentException("right to " + m2174z(endSide) + " undefined");
            case 5:
                if (endSide == 5) {
                    Layout layout9 = constraint.layout;
                    layout9.baselineToBaseline = endID;
                    layout9.bottomToBottom = -1;
                    layout9.bottomToTop = -1;
                    layout9.topToTop = -1;
                    layout9.topToBottom = -1;
                    return;
                }
                if (endSide == 3) {
                    Layout layout10 = constraint.layout;
                    layout10.baselineToTop = endID;
                    layout10.bottomToBottom = -1;
                    layout10.bottomToTop = -1;
                    layout10.topToTop = -1;
                    layout10.topToBottom = -1;
                    return;
                }
                if (endSide == 4) {
                    Layout layout11 = constraint.layout;
                    layout11.baselineToBottom = endID;
                    layout11.bottomToBottom = -1;
                    layout11.bottomToTop = -1;
                    layout11.topToTop = -1;
                    layout11.topToBottom = -1;
                    return;
                }
                throw new IllegalArgumentException("right to " + m2174z(endSide) + " undefined");
            case 6:
                if (endSide == 6) {
                    Layout layout12 = constraint.layout;
                    layout12.startToStart = endID;
                    layout12.startToEnd = -1;
                    return;
                } else if (endSide == 7) {
                    Layout layout13 = constraint.layout;
                    layout13.startToEnd = endID;
                    layout13.startToStart = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + m2174z(endSide) + " undefined");
                }
            case 7:
                if (endSide == 7) {
                    Layout layout14 = constraint.layout;
                    layout14.endToEnd = endID;
                    layout14.endToStart = -1;
                    return;
                } else if (endSide == 6) {
                    Layout layout15 = constraint.layout;
                    layout15.endToStart = endID;
                    layout15.endToEnd = -1;
                    return;
                } else {
                    throw new IllegalArgumentException("right to " + m2174z(endSide) + " undefined");
                }
            default:
                throw new IllegalArgumentException(m2174z(startSide) + " to " + m2174z(endSide) + " unknown");
        }
    }
}
