package com.sunia.calculatorv2.ink.analyzer;

import com.sunia.calculatorv2.ink.editor.Engine;
import com.sunia.calculatorv2.ink.recognizer.Recognizer;

/* loaded from: classes10.dex */
public class GenericRecognizer implements AutoCloseable {

    /* renamed from: e */
    public Engine f92383e;

    /* renamed from: f */
    public Recognizer.Config f92384f;

    /* renamed from: g */
    public Recognizer.Config f92385g;

    /* renamed from: h */
    public float f92386h = 160.0f;

    /* renamed from: i */
    public boolean f92387i = true;

    /* renamed from: j */
    public boolean f92388j = true;

    /* renamed from: k */
    public boolean f92389k = false;

    /* loaded from: classes10.dex */
    public enum AnalyzerMode {
        DOCUMENT,
        DIAGRAM,
        TEXT_BLOCK,
        TEXT_LINE,
        MATH,
        MATHS,
        DRAWING,
        SHAPE,
        CHEMICAL
    }

    public GenericRecognizer(Engine engine) {
        this.f92383e = engine;
    }

    /* renamed from: a */
    public void m58782a(Recognizer.Config config) {
        this.f92385g = config;
    }

    /* renamed from: b */
    public Recognizer.Config m58783b() {
        if (this.f92384f == null) {
            this.f92384f = new Recognizer.Config();
        }
        return this.f92384f;
    }

    /* renamed from: c */
    public boolean m58784c() {
        return this.f92388j;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
    }

    /* renamed from: a */
    public void m58781a(float f) {
        this.f92386h = f;
        m58783b().setXDpi(f);
        m58783b().setYDpi(f);
    }
}
