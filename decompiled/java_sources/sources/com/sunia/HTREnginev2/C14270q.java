package com.sunia.HTREnginev2;

import android.content.ClipboardManager;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import com.sunia.HTREnginev2.C14270q;
import com.sunia.HTREnginev2.InterfaceC13547c1;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.calculatorv2.ink.analyzer.GenericRecognizer;
import com.sunia.calculatorv2.ink.editor.EditorListener;
import com.sunia.calculatorv2.ink.editor.Engine;
import com.sunia.calculatorv2.ink.editor.IEditor;
import com.sunia.calculatorv2.ink.editor.PointerTool;
import com.sunia.calculatorv2.ink.editor.Selection;
import com.sunia.calculatorv2.ink.global.CalculatorVariable;
import com.sunia.calculatorv2.ink.graphics.BoundBox;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import com.sunia.calculatorv2.ink.graphics.Style;
import com.sunia.calculatorv2.ink.model.AbstractC14807f;
import com.sunia.calculatorv2.ink.model.C14806e;
import com.sunia.calculatorv2.ink.model.C14827z;
import com.sunia.calculatorv2.ink.model.IElement;
import com.sunia.calculatorv2.ink.model.MathElement;
import com.sunia.calculatorv2.ink.recognizer.Recognizer;
import com.sunia.calculatorv2.ink.solver.SolverContext;
import com.sunia.calculatorv2.ink.util.Alternative;
import com.sunia.commonv2.callback.HWRCallback;
import com.sunia.hwrv2.demo.calculator.hwr.HWREngineAdapter;
import com.sunia.hwrv2.demo.calculator.hwr.SimpleRecognize;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.function.Predicate;

/* renamed from: com.sunia.HTREnginev2.q */
/* loaded from: classes10.dex */
public class C14270q implements AutoCloseable, IEditor {

    /* renamed from: A0 */
    public BoundBox f81422A0;

    /* renamed from: B0 */
    public int f81423B0;

    /* renamed from: C0 */
    public final List<Selection<C14806e>> f81424C0;

    /* renamed from: D0 */
    public final Selection<C14827z> f81425D0;

    /* renamed from: E0 */
    public Selection<C14827z> f81426E0;

    /* renamed from: F0 */
    public int f81427F0;

    /* renamed from: G0 */
    public Object f81428G0;

    /* renamed from: H0 */
    public int f81429H0;

    /* renamed from: I0 */
    public int f81430I0;

    /* renamed from: J */
    public C14376s1 f81431J;

    /* renamed from: O */
    public boolean f81432O;

    /* renamed from: Q */
    public boolean f81433Q;

    /* renamed from: Z */
    public long f81434Z;

    /* renamed from: e */
    public ExecutorService f81435e;

    /* renamed from: g */
    public ScheduledExecutorService f81437g;

    /* renamed from: h */
    public Future<?> f81438h;

    /* renamed from: i */
    public Future<?> f81439i;

    /* renamed from: k */
    public C13750g f81441k;

    /* renamed from: k0 */
    public final Map<Integer, PointerTool> f81442k0;

    /* renamed from: q */
    public WeakReference<InterfaceC13547c1> f81448q;

    /* renamed from: q0 */
    public PointerTool f81449q0;

    /* renamed from: r */
    public final Engine f81450r;

    /* renamed from: t */
    public InterfaceC14684y0 f81452t;

    /* renamed from: t0 */
    public boolean f81453t0;

    /* renamed from: u */
    public GenericRecognizer f81454u;

    /* renamed from: u0 */
    public boolean f81455u0;

    /* renamed from: v */
    public C14806e f81456v;

    /* renamed from: v0 */
    public boolean f81457v0;

    /* renamed from: w */
    public boolean f81458w;

    /* renamed from: w0 */
    public int f81459w0;

    /* renamed from: x */
    public C13963k1 f81460x;

    /* renamed from: x0 */
    public SolverContext f81461x0;

    /* renamed from: y */
    public float f81462y;

    /* renamed from: y0 */
    public boolean f81463y0;

    /* renamed from: z */
    public boolean f81464z;

    /* renamed from: z0 */
    public BoundBox f81465z0;

    /* renamed from: f */
    public final ExecutorService f81436f = Executors.newSingleThreadExecutor();

    /* renamed from: j */
    public volatile int f81440j = 0;

    /* renamed from: l */
    public volatile C14219p1 f81443l = null;

    /* renamed from: m */
    public Matrix f81444m = new Matrix();

    /* renamed from: n */
    public Matrix f81445n = new Matrix();

    /* renamed from: o */
    public List<WeakReference<EditorListener>> f81446o = new ArrayList();

    /* renamed from: p */
    public float[] f81447p = new float[2];

    /* renamed from: s */
    public GenericRecognizer.AnalyzerMode f81451s = GenericRecognizer.AnalyzerMode.DOCUMENT;

    /* renamed from: com.sunia.HTREnginev2.q$a */
    /* loaded from: classes10.dex */
    public class a implements HWRCallback {

        /* renamed from: a */
        public final /* synthetic */ C13750g f81466a;

        /* renamed from: b */
        public final /* synthetic */ List f81467b;

        /* renamed from: c */
        public final /* synthetic */ int f81468c;

        public a(C13750g c13750g, List list, int i) {
            this.f81466a = c13750g;
            this.f81467b = list;
            this.f81468c = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public /* synthetic */ void m56560b(int i) {
            if (i == C14270q.this.f81440j && C14270q.this.f81443l == null) {
                C14270q.this.convert();
            }
        }

        @Override // com.sunia.commonv2.callback.HWRCallback
        public void onError(Throwable th) {
            C14270q.this.m56554t0((Exception) th);
        }

        @Override // com.sunia.commonv2.callback.HWRCallback
        public void onSuccess(String str, String str2) {
            C14806e createPlaceholder;
            if (this.f81466a.m54215b()) {
                return;
            }
            LogUtil.m57656i("Editor", "Result: " + str);
            if (this.f81467b.isEmpty()) {
                createPlaceholder = C14806e.f92421g;
            } else if (C14164o1.m55883a(str)) {
                createPlaceholder = HWREngineAdapter.createPlaceholder(this.f81467b);
            } else {
                try {
                    createPlaceholder = HWREngineAdapter.parseResult(str, this.f81467b);
                } catch (Exception e) {
                    LogUtil.m57658w("Editor", e);
                    createPlaceholder = HWREngineAdapter.createPlaceholder(this.f81467b);
                }
            }
            C14270q.this.f81456v = createPlaceholder;
            C14270q.this.m56552r0(createPlaceholder, this.f81468c);
            if (C14270q.this.f81433Q && this.f81468c == C14270q.this.f81440j) {
                try {
                    ScheduledExecutorService scheduledExecutorService = C14270q.this.f81437g;
                    final int i = this.f81468c;
                    scheduledExecutorService.schedule(new Runnable() { // from class: com.sunia.HTREnginev2.y4p
                        @Override // java.lang.Runnable
                        public final void run() {
                            C14270q.a.this.m56560b(i);
                        }
                    }, C14270q.this.f81434Z, TimeUnit.MILLISECONDS);
                } catch (RejectedExecutionException e2) {
                    LogUtil.m57658w("Editor", e2);
                }
            }
            LogUtil.m57656i("Editor", "Recognized finished:" + C13546c0.m53376a(createPlaceholder));
        }
    }

    public C14270q(Engine engine) {
        C14806e c14806e = C14806e.f92421g;
        this.f81456v = c14806e;
        this.f81458w = true;
        this.f81460x = new C13963k1();
        this.f81462y = 160.0f;
        this.f81464z = true;
        this.f81432O = false;
        this.f81433Q = false;
        this.f81434Z = 5000L;
        HashMap hashMap = new HashMap();
        this.f81442k0 = hashMap;
        PointerTool pointerTool = CalculatorVariable.PEN_TOOL;
        this.f81449q0 = pointerTool;
        this.f81453t0 = false;
        this.f81455u0 = true;
        this.f81457v0 = false;
        this.f81459w0 = 1;
        this.f81463y0 = false;
        BoundBox boundBox = new BoundBox(Float.NEGATIVE_INFINITY, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.POSITIVE_INFINITY);
        this.f81465z0 = boundBox;
        this.f81422A0 = boundBox;
        this.f81423B0 = 256;
        ArrayList arrayList = new ArrayList();
        this.f81424C0 = arrayList;
        Selection<C14827z> selection = new Selection<>(new C14827z(c14806e, Collections.emptyList()), Collections.emptyList());
        this.f81425D0 = selection;
        this.f81426E0 = selection;
        this.f81427F0 = 0;
        this.f81428G0 = new Object();
        this.f81429H0 = -1;
        this.f81430I0 = -256;
        LogUtil.m57656i("Editor", "Editor created");
        this.f81450r = engine;
        this.f81454u = engine.createGenericRecognizer();
        hashMap.put(4, CalculatorVariable.ERASER_TOOL);
        hashMap.put(0, pointerTool);
        arrayList.add(new Selection(c14806e, Collections.emptyList()));
        getSolverContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A0 */
    public /* synthetic */ void m56480A0(int i) {
        this.f81452t.mo57286a(i);
        this.f81431J = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C0 */
    public /* synthetic */ void m56482C0(C14806e c14806e) {
        try {
            C14806e m55817a = C14163o0.m55817a(c14806e, getConvertedElement(), this);
            LogUtil.m57656i("Editor", "Converted:" + C13546c0.m53376a(m55817a));
            m56525a(new Selection<>(m55817a, Collections.emptyList()));
        } catch (Throwable th) {
            m56554t0(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E0 */
    public /* synthetic */ void m56484E0(float f, float f2, long j, float f3, float f4, float f5, int i, int i2) {
        this.f81452t.mo57288c(f, f2, j, f3, f4, f5, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G0 */
    public /* synthetic */ void m56486G0(float f, float f2, long j, float f3, float f4, float f5, int i, int i2) {
        this.f81452t.mo57285a(f, f2, j, f3, f4, f5, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H0 */
    public /* synthetic */ void m56488H0(float f, float f2, long j, float f3, float f4, float f5, int i, int i2) {
        this.f81452t.mo57287b(f, f2, j, f3, f4, f5, i, i2);
        this.f81431J = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J0 */
    public /* synthetic */ void m56490J0() {
        GenericRecognizer genericRecognizer = this.f81454u;
        if (genericRecognizer != null) {
            try {
                genericRecognizer.close();
            } catch (Exception e) {
                m56554t0(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K0 */
    public /* synthetic */ void m56491K0() {
        InterfaceC14684y0 interfaceC14684y0 = this.f81452t;
        if (interfaceC14684y0 != null) {
            try {
                interfaceC14684y0.close();
            } catch (Exception e) {
                m56554t0(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L0 */
    public /* synthetic */ void m56492L0() {
        if (this.f81453t0) {
            Iterator<AbstractC14807f> it2 = this.f81456v.mo58831f().iterator();
            while (it2.hasNext()) {
                for (AbstractC14807f abstractC14807f : it2.next().mo58831f()) {
                    if (abstractC14807f instanceof MathElement) {
                        List<Alternative<AbstractC14807f>> candidates = ((MathElement) abstractC14807f).getCandidates();
                        if (!candidates.isEmpty()) {
                            candidates.get(0).getConfidence();
                        }
                    }
                }
            }
        }
        m56532b(this.f81456v);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M0 */
    public /* synthetic */ void m56494M0() {
        this.f81452t = this.f81450r.createPredictor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N0 */
    public /* synthetic */ void m56495N0() {
        C14376s1 mo57283a = this.f81452t.mo57283a();
        this.f81431J = mo57283a;
        if (mo57283a != null) {
            m56517Q0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O0 */
    public /* synthetic */ void m56496O0() {
        InterfaceC14684y0 interfaceC14684y0 = this.f81452t;
        if (interfaceC14684y0 != null) {
            interfaceC14684y0.mo57284a(this.f81462y);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P0 */
    public /* synthetic */ void m56497P0() {
        moveUndoStackIndex(0);
    }

    /* renamed from: n0 */
    public static C14827z m56508n0(AbstractC14807f<? extends AbstractC14807f> abstractC14807f, float f, float f2) {
        ArrayList arrayList = new ArrayList(abstractC14807f.mo58831f().size());
        for (AbstractC14807f abstractC14807f2 : abstractC14807f.mo58831f()) {
            if (abstractC14807f2.mo58857g().contains(f, f2)) {
                LogUtil.m57656i("Editor", "Selected: " + abstractC14807f2);
                arrayList.add(m56508n0(abstractC14807f2, f, f2));
            }
        }
        return new C14827z(abstractC14807f, arrayList);
    }

    /* renamed from: x0 */
    public static /* synthetic */ boolean m56513x0(EditorListener editorListener, WeakReference weakReference) {
        return weakReference.get() == editorListener;
    }

    /* renamed from: A */
    public void m56515A() {
        List<C14219p1> list;
        m56528b();
        C13750g c13750g = new C13750g();
        int i = this.f81440j + 1;
        this.f81440j = i;
        List<C14219p1> traces = getTraces();
        if (traces.isEmpty()) {
            list = traces;
        } else {
            BoundBox m56195a = C14219p1.m56195a(traces);
            float width = m56195a.getWidth();
            float height = m56195a.getHeight();
            if (width >= 128.0f || height >= 32.0f) {
                list = traces;
            } else {
                list = C14219p1.m56196a(traces, new BoundBox(0.0f, 128.0f, 0.0f, 32.0f));
                LogUtil.m57656i("Editor", "Traces rescaled");
            }
            LogUtil.m57656i("Editor", "Trace box:" + m56195a);
        }
        SimpleRecognize.startRecognize(list, c13750g, new a(c13750g, traces, i), this.f81436f);
        this.f81441k = c13750g;
    }

    /* renamed from: I0 */
    public final void m56516I0() {
        if (this.f81464z && this.f81435e == null) {
            ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
            this.f81435e = newSingleThreadExecutor;
            newSingleThreadExecutor.submit(new Runnable() { // from class: com.sunia.HTREnginev2.p4p
                @Override // java.lang.Runnable
                public final void run() {
                    C14270q.this.m56494M0();
                }
            });
        }
    }

    /* renamed from: Q0 */
    public final void m56517Q0() {
        m56555u0(isCopyAndPasteModeEnabled() ? InterfaceC13547c1.f66340c : InterfaceC13547c1.f66338a);
    }

    /* renamed from: R0 */
    public final void m56518R0() {
        if (this.f81444m.isIdentity()) {
            return;
        }
        LogUtil.m57656i("Editor", "Matrix reset");
        this.f81444m.reset();
        this.f81445n.reset();
        WeakReference<InterfaceC13547c1> weakReference = this.f81448q;
        if (weakReference != null && weakReference.get() != null) {
            this.f81454u.m58781a(this.f81462y / this.f81444m.mapRadius(1.0f));
        }
        this.f81465z0 = this.f81422A0;
    }

    /* renamed from: a */
    public void m56525a(Selection<C14806e> selection) {
        Selection<C14806e> m56537d = m56537d();
        C14806e converted = selection.getConverted();
        C14806e converted2 = m56537d.getConverted();
        List<C14219p1> traces = selection.getTraces();
        List<C14219p1> traces2 = m56537d.getTraces();
        if (this.f81453t0 && converted2 != converted) {
            try {
                if (traces.isEmpty() && this.f81443l == null) {
                    m56518R0();
                }
                converted = (C14806e) C14163o0.m55818a(C14163o0.m55821b(C14163o0.m55830j(converted), this), this);
            } catch (Throwable th) {
                LogUtil.m57656i("Editor", LogUtil.getStackTraceString(th));
                m56554t0(th);
            }
        }
        boolean z = converted2 != converted;
        boolean z2 = traces2 != traces;
        if (z || z2) {
            m56531b(this.f81425D0);
            synchronized (this.f81428G0) {
                converted.mo58857g();
                if (this.f81433Q) {
                    while (true) {
                        int i = this.f81427F0;
                        if (i < 0) {
                            break;
                        }
                        Selection<C14806e> selection2 = this.f81424C0.get(i);
                        if (selection2.getConverted() != converted2 || selection2.getTraces().isEmpty()) {
                            break;
                        }
                        this.f81424C0.remove(this.f81427F0);
                        this.f81427F0--;
                    }
                    if (this.f81427F0 == -1) {
                        this.f81424C0.add(new Selection<>(converted2, Collections.emptyList()));
                        this.f81427F0++;
                    }
                }
                int i2 = this.f81427F0 + 1;
                this.f81427F0 = i2;
                List<Selection<C14806e>> list = this.f81424C0;
                list.subList(i2, list.size()).clear();
                this.f81424C0.add(new Selection<>(converted, traces));
                int i3 = this.f81427F0;
                if (i3 >= this.f81423B0) {
                    this.f81427F0 = i3 - 1;
                    this.f81424C0.remove(0);
                }
                if (traces.isEmpty()) {
                    this.f81456v = C14806e.f92421g;
                }
            }
            if (z) {
                m56551q0(converted);
            }
            if (z2) {
                m56556v0(traces);
            }
            m56555u0(InterfaceC13547c1.f66339b);
        }
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public void addEditorListener(EditorListener editorListener) {
        Iterator<WeakReference<EditorListener>> it2 = this.f81446o.iterator();
        while (it2.hasNext()) {
            WeakReference<EditorListener> next = it2.next();
            if (next == null) {
                it2.remove();
            }
            EditorListener editorListener2 = next.get();
            if (editorListener2 == null || editorListener2 == editorListener) {
                it2.remove();
            }
        }
        this.f81446o.add(0, new WeakReference<>(editorListener));
    }

    /* renamed from: b */
    public void m56528b() {
        Future<?> future = this.f81439i;
        if (future != null) {
            future.cancel(false);
        }
        C13750g c13750g = this.f81441k;
        if (c13750g != null) {
            c13750g.m54214a();
        }
    }

    /* renamed from: c */
    public GenericRecognizer.AnalyzerMode m56533c() {
        return this.f81451s;
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public boolean canRedo() {
        return m56542h() > 0;
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public boolean canUndo() {
        return m56543i() > 0;
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public void clear() {
        m56525a(new Selection<>(C14806e.f92421g, Collections.emptyList()));
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public void clearSelection() {
        m56531b(this.f81425D0);
    }

    @Override // java.lang.AutoCloseable, com.sunia.calculatorv2.ink.editor.IEditor
    public void close() {
        this.f81463y0 = true;
        this.f81436f.submit(new Runnable() { // from class: com.sunia.HTREnginev2.s4p
            @Override // java.lang.Runnable
            public final void run() {
                C14270q.this.m56490J0();
            }
        });
        this.f81436f.shutdown();
        ExecutorService executorService = this.f81435e;
        if (executorService != null) {
            executorService.submit(new Runnable() { // from class: com.sunia.HTREnginev2.t4p
                @Override // java.lang.Runnable
                public final void run() {
                    C14270q.this.m56491K0();
                }
            });
            this.f81435e.shutdown();
        }
        ScheduledExecutorService scheduledExecutorService = this.f81437g;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
        }
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public void convert() {
        this.f81436f.submit(new Runnable() { // from class: com.sunia.HTREnginev2.l4p
            @Override // java.lang.Runnable
            public final void run() {
                C14270q.this.m56492L0();
            }
        });
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public boolean copy(ClipboardManager clipboardManager) {
        return C14021l.m55357a(clipboardManager, this);
    }

    /* renamed from: d */
    public Selection<C14806e> m56537d() {
        Selection<C14806e> selection;
        synchronized (this.f81428G0) {
            selection = this.f81424C0.get(this.f81427F0);
        }
        return selection;
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public C14806e getConvertedElement() {
        return m56537d().getConverted();
    }

    /* renamed from: g */
    public int m56541g() {
        return this.f81429H0;
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public int getCopyAndPasteMode() {
        return this.f81459w0;
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public List<List<? extends IElement>> getElementsToCopy() {
        return C14021l.m55355a(m56544j().getConverted(), getConvertedElement());
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public List<Selection<IElement>> getHistory() {
        ArrayList arrayList;
        synchronized (this.f81428G0) {
            arrayList = new ArrayList();
            Iterator<Selection<C14806e>> it2 = this.f81424C0.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
        }
        return arrayList;
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public Matrix getMatrix() {
        return new Matrix(this.f81444m);
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public SolverContext getSolverContext() {
        if (this.f81461x0 == null) {
            SolverContext solverContext = new SolverContext(false, 3, SolverContext.FractionPreference.DECIMAL);
            this.f81461x0 = solverContext;
            HWREngineAdapter.setSolverContext(solverContext);
            HWREngineAdapter.enableMathDotConvertMultiplication(this.f81455u0);
        }
        return this.f81461x0;
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public PointerTool getToolForType(int i) {
        PointerTool pointerTool = this.f81442k0.get(Integer.valueOf(i));
        return pointerTool == null ? this.f81442k0.get(0) : pointerTool;
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public List<C14219p1> getTraces() {
        return m56537d().getTraces();
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public int getUndoStackIndex() {
        return this.f81427F0;
    }

    /* renamed from: h */
    public int m56542h() {
        int size;
        synchronized (this.f81428G0) {
            size = (this.f81424C0.size() - 1) - getUndoStackIndex();
        }
        return size;
    }

    /* renamed from: i */
    public int m56543i() {
        int undoStackIndex;
        synchronized (this.f81428G0) {
            undoStackIndex = getUndoStackIndex() + this.f81424C0.get(0).getTraces().size();
        }
        return undoStackIndex;
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public boolean isAutoConversionEnabled() {
        return this.f81433Q;
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public boolean isCopyAndPasteModeEnabled() {
        return this.f81457v0;
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public boolean isMultiplivativeDotEnabled() {
        return this.f81455u0;
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public C13963k1 getStyleSheet() {
        return this.f81460x;
    }

    /* renamed from: l */
    public BoundBox m56546l() {
        if (this.f81465z0 == null) {
            this.f81465z0 = new BoundBox(Float.NEGATIVE_INFINITY, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.POSITIVE_INFINITY);
        }
        return this.f81465z0;
    }

    /* renamed from: l0 */
    public final void m56547l0() {
        if (this.f81458w) {
            m56515A();
        }
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public void moveUndoStackIndex(int i) {
        synchronized (this.f81428G0) {
            int i2 = this.f81427F0 + i;
            if (i2 >= 0 && i2 < this.f81424C0.size()) {
                LogUtil.m57656i("Editor", "HistoryIndex: " + i2);
                Selection<C14806e> selection = this.f81424C0.get(i2);
                Selection<C14806e> m56537d = m56537d();
                C14806e c14806e = (C14806e) C14163o0.m55818a(C14163o0.m55821b(selection.getConverted(), this), this);
                C14806e converted = m56537d.getConverted();
                List<C14219p1> traces = selection.getTraces();
                List<C14219p1> traces2 = m56537d.getTraces();
                Iterator<AbstractC14807f> it2 = c14806e.mo58831f().iterator();
                while (it2.hasNext()) {
                    for (IElement iElement : it2.next().mo58831f()) {
                        if (iElement instanceof InterfaceC13856i) {
                            ((InterfaceC13856i) iElement).mo54662b();
                        }
                    }
                }
                this.f81424C0.set(i2, new Selection<>(c14806e, traces));
                this.f81427F0 = i2;
                boolean z = converted != c14806e;
                boolean z2 = traces2 != traces;
                if (z || z2) {
                    m56555u0(InterfaceC13547c1.f66339b);
                    if (z) {
                        m56551q0(c14806e);
                    }
                    if (z2) {
                        m56556v0(traces);
                        return;
                    }
                    return;
                }
                return;
            }
            LogUtil.m57656i("Editor", "Invalid History Index: " + i2);
        }
    }

    /* renamed from: n */
    public boolean m56548n() {
        return this.f81454u.m58784c();
    }

    /* renamed from: o */
    public boolean m56549o() {
        return this.f81432O;
    }

    /* renamed from: p */
    public boolean m56550p() {
        return this.f81453t0;
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public boolean paste(float f, float f2, ClipboardManager clipboardManager) {
        return C14021l.m55356a(f, f2, clipboardManager, this);
    }

    /* renamed from: q0 */
    public final void m56551q0(C14806e c14806e) {
        EditorListener editorListener;
        for (WeakReference<EditorListener> weakReference : this.f81446o) {
            if (weakReference != null && (editorListener = weakReference.get()) != null) {
                editorListener.onConvertedContentChanged(this, c14806e);
            }
        }
        m56555u0(InterfaceC13547c1.f66339b);
    }

    /* renamed from: r0 */
    public final void m56552r0(C14806e c14806e, int i) {
        EditorListener editorListener;
        boolean z = i != this.f81440j;
        for (WeakReference<EditorListener> weakReference : this.f81446o) {
            if (weakReference != null && (editorListener = weakReference.get()) != null) {
                editorListener.onUnconvertedContentChanged(this, c14806e, z);
            }
        }
        m56555u0(InterfaceC13547c1.f66339b);
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public void redo() {
        LogUtil.m57656i("Editor", "Trying to redo");
        moveUndoStackIndex(1);
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public void removeEditorListener(final EditorListener editorListener) {
        C13901j.m54846a(this.f81446o, new Predicate() { // from class: com.sunia.HTREnginev2.m4p
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m56513x0;
                m56513x0 = C14270q.m56513x0(EditorListener.this, (WeakReference) obj);
                return m56513x0;
            }
        });
    }

    /* renamed from: s0 */
    public final void m56553s0(C14827z c14827z, List<C14219p1> list, float f, float f2) {
        EditorListener editorListener;
        LogUtil.m57656i("Editor", "Firing selectionChanged");
        for (WeakReference<EditorListener> weakReference : this.f81446o) {
            if (weakReference != null && (editorListener = weakReference.get()) != null) {
                editorListener.onSelectionChanged(this, c14827z, new ArrayList(list), f, f2);
            }
        }
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public void setAnalyzerMode(GenericRecognizer.AnalyzerMode analyzerMode) {
        this.f81451s = analyzerMode;
        m56547l0();
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public void setAutoConversionDelayMilliseconds(long j) {
        this.f81434Z = j;
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public void setAutoConversionEnabled(boolean z) {
        this.f81433Q = z;
        if (z && this.f81437g == null) {
            this.f81437g = Executors.newSingleThreadScheduledExecutor();
        }
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public void setCopyAndPasteMode(int i) {
        this.f81459w0 = i;
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public void setCopyAndPasteModeEnabled(boolean z) {
        this.f81457v0 = z;
        m56555u0(InterfaceC13547c1.f66339b);
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public void setCopyBgColor(int i) {
        this.f81430I0 = i;
        this.f81460x.addRuleForClass(IStyleSheet.CLASS_HIGHLIGHTER, Style.createForegroundColorProperty(i));
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public void setEditorViewBgColor(int i) {
        this.f81429H0 = i;
        this.f81460x.addRuleForClass(IStyleSheet.CLASS_CANVAS, Style.createBackgroundColorProperty(i));
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public void setGestureEnabled(boolean z) {
        this.f81432O = z;
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public void setMathConfig(Recognizer.Config config) {
        this.f81454u.m58782a(config);
        m56547l0();
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public void setMultiplivativeDotEnabled(boolean z) {
        this.f81455u0 = z;
        SimpleRecognize.enableMathDotConvertMultiplication(z);
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public void setPredictTrajectory(boolean z) {
        this.f81464z = z;
        m56516I0();
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public void setRenderTarget(InterfaceC13547c1 interfaceC13547c1) {
        this.f81448q = new WeakReference<>(interfaceC13547c1);
        if (interfaceC13547c1 != null) {
            float sqrt = (float) Math.sqrt(interfaceC13547c1.getDpiX() * interfaceC13547c1.getDpiY());
            this.f81462y = sqrt;
            this.f81454u.m58781a(sqrt / this.f81444m.mapRadius(1.0f));
            m56516I0();
            ExecutorService executorService = this.f81435e;
            if (executorService != null) {
                executorService.submit(new Runnable() { // from class: com.sunia.HTREnginev2.u4p
                    @Override // java.lang.Runnable
                    public final void run() {
                        C14270q.this.m56496O0();
                    }
                });
            }
        }
        m56555u0(InterfaceC13547c1.f66341d);
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public void setSolverContext(SolverContext solverContext) {
        this.f81461x0 = solverContext;
        HWREngineAdapter.setSolverContext(solverContext);
        if (this.f81453t0) {
            m56557z();
        }
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public void setSolverEnabled(boolean z) {
        this.f81453t0 = z;
        if (z) {
            m56557z();
        }
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public void setToolForType(int i, PointerTool pointerTool) {
        if (pointerTool != null) {
            this.f81442k0.put(Integer.valueOf(i), pointerTool);
        } else if (this.f81442k0.containsKey(Integer.valueOf(i))) {
            if (i == 0) {
                this.f81442k0.put(0, CalculatorVariable.PEN_TOOL);
            } else {
                this.f81442k0.remove(Integer.valueOf(i));
            }
        }
    }

    /* renamed from: t0 */
    public final void m56554t0(Throwable th) {
        EditorListener editorListener;
        for (WeakReference<EditorListener> weakReference : this.f81446o) {
            if (weakReference != null && (editorListener = weakReference.get()) != null) {
                editorListener.onError(this, th);
            }
        }
    }

    /* renamed from: u0 */
    public final void m56555u0(EnumSet<InterfaceC13547c1.a> enumSet) {
        InterfaceC13547c1 interfaceC13547c1;
        WeakReference<InterfaceC13547c1> weakReference = this.f81448q;
        if (weakReference == null || (interfaceC13547c1 = weakReference.get()) == null) {
            return;
        }
        interfaceC13547c1.invalidate(enumSet);
    }

    @Override // com.sunia.calculatorv2.ink.editor.IEditor
    public void undo() {
        LogUtil.m57656i("Editor", "Undo");
        synchronized (this.f81428G0) {
            if (this.f81427F0 == 0) {
                List<C14219p1> traces = getTraces();
                if (!traces.isEmpty()) {
                    this.f81424C0.add(0, new Selection<>(getConvertedElement(), traces.subList(0, traces.size() - 1)));
                    this.f81427F0 = 1;
                }
            }
        }
        moveUndoStackIndex(-1);
    }

    /* renamed from: v0 */
    public final void m56556v0(List<C14219p1> list) {
        EditorListener editorListener;
        for (WeakReference<EditorListener> weakReference : this.f81446o) {
            if (weakReference != null && (editorListener = weakReference.get()) != null) {
                editorListener.onTraceListChanged(this, new ArrayList(list));
            }
        }
        m56547l0();
    }

    /* renamed from: z */
    public void m56557z() {
        this.f81436f.submit(new Runnable() { // from class: com.sunia.HTREnginev2.w4p
            @Override // java.lang.Runnable
            public final void run() {
                C14270q.this.m56497P0();
            }
        });
    }

    /* renamed from: z0 */
    public final void m56558z0(float f, float f2) {
        float[] fArr = this.f81447p;
        fArr[0] = f;
        fArr[1] = f2;
        this.f81445n.mapPoints(fArr);
    }

    /* renamed from: c */
    public void m56535c(final float f, final float f2, final long j, final float f3, final float f4, final float f5, final int i, final int i2) {
        if (this.f81464z) {
            this.f81435e.submit(new Runnable() { // from class: com.sunia.HTREnginev2.x4p
                @Override // java.lang.Runnable
                public final void run() {
                    C14270q.this.m56484E0(f, f2, j, f3, f4, f5, i, i2);
                }
            });
        }
        m56558z0(f, f2);
        this.f81443l = new C14219p1(new ArrayList(), new Path());
        C14219p1 c14219p1 = this.f81443l;
        float[] fArr = this.f81447p;
        c14219p1.m56199a(new C14580w0(fArr[0], fArr[1], j, f3, f4, f5));
        this.f81449q0 = getToolForType(i);
        m56517Q0();
    }

    /* renamed from: f */
    public float m56540f() {
        return this.f81462y;
    }

    /* renamed from: j */
    public Selection<C14827z> m56544j() {
        return this.f81426E0;
    }

    /* renamed from: d */
    public void m56538d(C14806e c14806e) {
        m56525a(new Selection<>(c14806e, getTraces()));
    }

    /* renamed from: b */
    public void m56532b(final C14806e c14806e) {
        this.f81436f.submit(new Runnable() { // from class: com.sunia.HTREnginev2.r4p
            @Override // java.lang.Runnable
            public final void run() {
                C14270q.this.m56482C0(c14806e);
            }
        });
    }

    /* renamed from: b */
    public void m56529b(final float f, final float f2, final long j, final float f3, final float f4, final float f5, final int i, final int i2) {
        if (this.f81443l != null) {
            if (this.f81464z) {
                this.f81435e.submit(new Runnable() { // from class: com.sunia.HTREnginev2.q4p
                    @Override // java.lang.Runnable
                    public final void run() {
                        C14270q.this.m56488H0(f, f2, j, f3, f4, f5, i, i2);
                    }
                });
            }
            m56558z0(f, f2);
            C14219p1 c14219p1 = this.f81443l;
            float[] fArr = this.f81447p;
            c14219p1.m56199a(new C14580w0(fArr[0], fArr[1], j, f3, f4, f5));
            this.f81449q0.mo58824a(this.f81443l, this);
            this.f81443l = null;
            m56517Q0();
        }
    }

    /* renamed from: c */
    public void m56534c(float f, float f2) {
        this.f81445n.postTranslate(f, f2);
        this.f81445n.invert(this.f81444m);
        m56527a(this.f81422A0, false);
        m56555u0(InterfaceC13547c1.f66341d);
    }

    /* renamed from: c */
    public void m56536c(Canvas canvas) {
        try {
            canvas.save();
            canvas.concat(this.f81444m);
            C13598d1.m53569a((AbstractC14807f) getConvertedElement(), (List<C14219p1>) Collections.emptyList(), true, this.f81444m, this.f81462y, this.f81460x, canvas);
            List<C14219p1> traces = getTraces();
            if (m56550p() && !isCopyAndPasteModeEnabled() && !traces.isEmpty()) {
                C13598d1.m53567a((C14219p1) null, getTraces(), getConvertedElement(), this.f81444m, this.f81462y, this.f81460x, canvas);
            }
            C13598d1.m53569a((AbstractC14807f) this.f81456v, traces, false, this.f81444m, this.f81462y, this.f81460x, canvas);
            canvas.restore();
        } catch (Exception e) {
            LogUtil.m57656i("Editor", LogUtil.getStackTraceString(e));
        }
    }

    /* renamed from: b */
    public void m56530b(Canvas canvas) {
        if (this.f81443l != null) {
            canvas.save();
            canvas.concat(this.f81444m);
            C14376s1 c14376s1 = this.f81431J;
            if (c14376s1 != null) {
                if (c14376s1.mo57118a() > this.f81443l.m56198a().mo57118a()) {
                    m56558z0(c14376s1.m57119b(), c14376s1.m57120c());
                    float[] fArr = this.f81447p;
                    c14376s1 = new C14376s1(fArr[0], fArr[1]);
                } else {
                    c14376s1 = null;
                }
            }
            C14376s1 c14376s12 = c14376s1;
            if (m56550p() && !isCopyAndPasteModeEnabled()) {
                List<C14219p1> traces = getTraces();
                C13598d1.m53567a(this.f81443l, traces, getConvertedElement(), this.f81444m, this.f81462y, this.f81460x, canvas);
                C13598d1.m53569a((AbstractC14807f) C14806e.f92421g, traces, false, this.f81444m, this.f81462y, this.f81460x, canvas);
            }
            if (!isCopyAndPasteModeEnabled()) {
                C13598d1.m53566a(this.f81443l, c14376s12, this.f81449q0.getStyleName(), this.f81444m, this.f81462y, this.f81460x, canvas);
            }
            canvas.restore();
        }
    }

    /* renamed from: b */
    public void m56531b(Selection<C14827z> selection) {
        if (this.f81426E0 != selection) {
            this.f81426E0 = selection;
            m56555u0(InterfaceC13547c1.f66340c);
        }
    }

    /* renamed from: a */
    public void m56522a(final int i) {
        if (this.f81443l != null) {
            if (this.f81464z) {
                this.f81435e.submit(new Runnable() { // from class: com.sunia.HTREnginev2.v4p
                    @Override // java.lang.Runnable
                    public final void run() {
                        C14270q.this.m56480A0(i);
                    }
                });
            }
            this.f81443l = null;
            m56517Q0();
        }
    }

    /* renamed from: a */
    public void m56521a(final float f, final float f2, final long j, final float f3, final float f4, final float f5, final int i, final int i2, boolean z) {
        if (this.f81443l != null) {
            if (this.f81464z) {
                this.f81435e.submit(new Runnable() { // from class: com.sunia.HTREnginev2.n4p
                    @Override // java.lang.Runnable
                    public final void run() {
                        C14270q.this.m56486G0(f, f2, j, f3, f4, f5, i, i2);
                    }
                });
                if (!z) {
                    Future<?> future = this.f81438h;
                    if (future != null) {
                        future.cancel(false);
                    }
                    this.f81438h = this.f81435e.submit(new Runnable() { // from class: com.sunia.HTREnginev2.o4p
                        @Override // java.lang.Runnable
                        public final void run() {
                            C14270q.this.m56495N0();
                        }
                    });
                }
            }
            m56558z0(f, f2);
            C14219p1 c14219p1 = this.f81443l;
            float[] fArr = this.f81447p;
            c14219p1.m56199a(new C14580w0(fArr[0], fArr[1], j, f3, f4, f5));
            m56517Q0();
        }
    }

    /* renamed from: a */
    public void m56524a(C14219p1 c14219p1) {
        List<C14219p1> traces = getTraces();
        ArrayList arrayList = new ArrayList(traces.size() + 1);
        arrayList.addAll(traces);
        arrayList.add(c14219p1);
        m56525a(new Selection<>(getConvertedElement(), Collections.unmodifiableList(arrayList)));
    }

    /* renamed from: a */
    public void m56520a(float f, float f2, float f3, float f4, float f5) {
        this.f81444m.postTranslate(f, f2);
        this.f81444m.postScale(f3, f3, f4, f5);
        this.f81444m.invert(this.f81445n);
        WeakReference<InterfaceC13547c1> weakReference = this.f81448q;
        if (weakReference != null && weakReference.get() != null) {
            this.f81454u.m58781a(this.f81462y / this.f81444m.mapRadius(1.0f));
        }
        m56527a(this.f81422A0, false);
        m56555u0(InterfaceC13547c1.f66341d);
    }

    /* renamed from: a */
    public void m56523a(Canvas canvas) {
        canvas.drawColor(m56541g());
        if (isCopyAndPasteModeEnabled()) {
            canvas.save();
            canvas.concat(this.f81444m);
            if (this.f81443l != null) {
                C14376s1 m56198a = this.f81443l.m56198a();
                C13598d1.m53570a(C14021l.m55354a(m56508n0(getConvertedElement(), m56198a.m57119b(), m56198a.m57120c()), this), this.f81444m, this.f81462y, this.f81460x, canvas);
            }
            C13598d1.m53570a(C14021l.m55354a(m56544j().getConverted(), this), this.f81444m, this.f81462y, this.f81460x, canvas);
            canvas.restore();
        }
    }

    /* renamed from: a */
    public void m56519a(float f, float f2) {
        C14827z m56508n0 = m56508n0(getConvertedElement(), f, f2);
        List<C14219p1> singletonList = Collections.singletonList(new C14219p1(Collections.singletonList(new C14376s1(f, f2))));
        Selection<C14827z> selection = new Selection<>(m56508n0, m56508n0.mo58831f().isEmpty() ? singletonList : Collections.emptyList());
        m56531b(selection);
        m56553s0(selection.getConverted(), singletonList, f, f2);
    }

    /* renamed from: a */
    public void m56526a(BoundBox boundBox) {
        m56527a(boundBox, true);
    }

    /* renamed from: a */
    public void m56527a(BoundBox boundBox, boolean z) {
        if (boundBox != null) {
            this.f81422A0 = boundBox;
            float left = boundBox.getLeft();
            float top = boundBox.getTop();
            float right = boundBox.getRight();
            float bottom = boundBox.getBottom();
            if (C14629x.m58145a(left) && C14629x.m58145a(top)) {
                m56558z0(left, top);
                float[] fArr = this.f81447p;
                float f = fArr[0];
                top = fArr[1];
                left = f;
            }
            if (C14629x.m58145a(right) && C14629x.m58145a(bottom)) {
                m56558z0(right, bottom);
                float[] fArr2 = this.f81447p;
                right = fArr2[0];
                bottom = fArr2[1];
            }
            this.f81465z0 = new BoundBox(left, right, top, bottom);
            C14806e convertedElement = getConvertedElement();
            if (convertedElement.mo58856e().isNonempty() && z) {
                m56538d((C14806e) C14163o0.m55818a(convertedElement, this));
            }
        }
    }
}
