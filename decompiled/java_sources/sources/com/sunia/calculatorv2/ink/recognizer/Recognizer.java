package com.sunia.calculatorv2.ink.recognizer;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.util.DisplayMetrics;
import com.sunia.HTREnginev2.C13509b1;
import com.sunia.HTREnginev2.C13857i0;
import com.sunia.HTREnginev2.C14219p1;
import java.io.Closeable;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.mortbay.util.MultiPartWriter;

/* loaded from: classes10.dex */
public class Recognizer implements Closeable {
    private static final String TAG = "Recognizer";

    /* loaded from: classes10.dex */
    public static class Config {
        private int[] categories;
        private int characterCandidateCount;
        private boolean degradeLongLine;
        private boolean fixAlignment;
        private boolean fixFullWidth;
        private boolean fixSize;
        private C13857i0 grammar;
        private C13857i0 grammarFromCategories;
        private String[] languages;
        private int maxLength;
        private int modelCount;
        private boolean needAlignment;
        private boolean needBoundingBox;
        private float ngramWeightDecoder;
        private float ngramWeightPostcorrector;
        private String startSymbol;
        private int textCandidateCount;
        private boolean useWordList;
        private int wordCandidateCount;
        private Map<String, Integer> words;
        private float xDpi;
        private float yDpi;

        public Config() {
            this(0, 0, 0, 0, 0, null, null, true, false, true, false, true, true, true, new String[]{"zh_multidirectional"}, Float.NaN, Float.NaN, null, null, 0.0f, 0.0f);
        }

        public Config copy() {
            return new Config(this.characterCandidateCount, this.wordCandidateCount, this.textCandidateCount, this.maxLength, this.modelCount, null, this.categories, this.useWordList, this.degradeLongLine, this.needAlignment, this.needBoundingBox, this.fixAlignment, this.fixSize, this.fixFullWidth, this.languages, this.ngramWeightDecoder, this.ngramWeightPostcorrector, this.words, this.startSymbol, this.xDpi, this.yDpi);
        }

        public int[] getCategories() {
            return this.categories;
        }

        public int getCharacterCandidateCount() {
            return this.characterCandidateCount;
        }

        public C13857i0 getGrammar() {
            return null;
        }

        public String[] getLanguages() {
            return this.languages;
        }

        public int getMaxLength() {
            return this.maxLength;
        }

        public int getModelCount() {
            return this.modelCount;
        }

        public float getNgramWeightDecoder() {
            return this.ngramWeightDecoder;
        }

        public float getNgramWeightPostcorrector() {
            return this.ngramWeightPostcorrector;
        }

        public String getStartSymbol() {
            return this.startSymbol;
        }

        public int getTextCandidateCount() {
            return this.textCandidateCount;
        }

        public int getWordCandidateCount() {
            return this.wordCandidateCount;
        }

        public Map<String, Integer> getWords() {
            return this.words;
        }

        public float getXDpi() {
            if (this.xDpi <= 0.0f) {
                DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
                this.xDpi = displayMetrics.xdpi;
                if (this.yDpi <= 0.0f) {
                    this.yDpi = displayMetrics.ydpi;
                }
            }
            return this.xDpi;
        }

        public float getYDpi() {
            if (this.yDpi <= 0.0f) {
                DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
                this.yDpi = displayMetrics.ydpi;
                if (this.xDpi <= 0.0f) {
                    this.xDpi = displayMetrics.xdpi;
                }
            }
            return this.yDpi;
        }

        public boolean isDegradeLongLine() {
            return this.degradeLongLine;
        }

        public boolean isFixAlignment() {
            return this.fixAlignment;
        }

        public boolean isFixFullWidth() {
            return this.fixFullWidth;
        }

        public boolean isFixSize() {
            return this.fixSize;
        }

        public boolean isNeedAlignment() {
            return this.needAlignment;
        }

        public boolean isNeedBoundingBox() {
            return this.needBoundingBox;
        }

        public boolean isUseWordList() {
            return this.useWordList;
        }

        public void setCategories(int... iArr) {
            this.categories = iArr;
        }

        public void setCharacterCandidateCount(int i) {
            this.characterCandidateCount = i;
        }

        public void setDegradeLongLine(boolean z) {
            this.degradeLongLine = z;
        }

        public void setFixAlignment(boolean z) {
            this.fixAlignment = z;
        }

        public void setFixFullWidth(boolean z) {
            this.fixFullWidth = z;
        }

        public void setFixSize(boolean z) {
            this.fixSize = z;
        }

        public void setGrammar(C13857i0 c13857i0) {
        }

        public void setLanguages(String... strArr) {
            this.languages = strArr;
        }

        public void setMaxLength(int i) {
            this.maxLength = i;
        }

        public void setModelCount(int i) {
            this.modelCount = i;
        }

        public void setNeedAlignment(boolean z) {
            this.needAlignment = z;
        }

        public void setNeedBoundingBox(boolean z) {
            this.needBoundingBox = z;
        }

        public void setNgramWeightDecoder(float f) {
            this.ngramWeightDecoder = f;
        }

        public void setNgramWeightPostcorrector(float f) {
            this.ngramWeightPostcorrector = f;
        }

        public void setStartSymbol(String str) {
            this.startSymbol = str;
        }

        public void setTextCandidateCount(int i) {
            this.textCandidateCount = i;
        }

        public void setUseWordList(boolean z) {
            this.useWordList = z;
        }

        public void setWordCandidateCount(int i) {
            this.wordCandidateCount = i;
        }

        public void setWords(Map<String, Integer> map) {
            this.words = map;
        }

        public void setXDpi(float f) {
            this.xDpi = f;
        }

        public void setYDpi(float f) {
            this.yDpi = f;
        }

        public Config(int i, int i2, int i3, int i4, int i5, C13857i0 c13857i0, boolean z, boolean z2, boolean z3, String[] strArr, float f, float f2, Map<String, Integer> map, String str) {
            this(i, i2, i3, i4, i5, c13857i0, null, z, z2, z3, false, true, true, true, strArr, f, f2, map, str, 0.0f, 0.0f);
        }

        public Config(int i, int i2, int i3, int i4, int i5, C13857i0 c13857i0, int[] iArr, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, String[] strArr, float f, float f2, Map<String, Integer> map, String str, float f3, float f4) {
            this.characterCandidateCount = i;
            this.wordCandidateCount = i2;
            this.textCandidateCount = i3;
            this.maxLength = i4;
            this.modelCount = i5;
            this.categories = iArr;
            this.useWordList = z;
            this.degradeLongLine = z2;
            this.fixAlignment = z5;
            this.needAlignment = z3;
            this.needBoundingBox = z4;
            this.fixSize = z6;
            this.fixFullWidth = z7;
            this.languages = strArr;
            this.ngramWeightDecoder = f;
            this.ngramWeightPostcorrector = f2;
            this.words = map;
            this.startSymbol = str;
            this.xDpi = f3;
            this.yDpi = f4;
        }
    }

    /* loaded from: classes10.dex */
    public enum RecognitionMode {
        HORIZONTAL,
        VERTICAL,
        SUPERIMPOSED,
        OPTICAL
    }

    public static String[] decodeLanguageList(String str) {
        return str.split(MultiPartWriter.f115320h);
    }

    public static String encodeLanguageList(String... strArr) {
        return String.join(MultiPartWriter.f115320h, strArr);
    }

    private List<C13509b1> recognize(List<C14219p1> list, Bitmap bitmap, String str, Config config) {
        throw new UnsupportedOperationException();
    }

    public void cancel() {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        closeExcept(Collections.emptySet());
    }

    public void closeExcept(Set<String> set) {
    }

    public Set<String> getAvailableLanguages() {
        return getAvailableLanguages(true, true, true);
    }

    public String getName(String str) {
        return str;
    }

    public void init(String str) {
    }

    public void initDetector() {
    }

    public boolean isCancelled() {
        return false;
    }

    public Set<String> getAvailableLanguages(boolean z, boolean z2, boolean z3) {
        return Collections.emptySet();
    }
}
