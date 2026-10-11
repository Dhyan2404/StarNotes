package com.onyx.engine.sdk;

import android.graphics.RectF;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes8.dex */
public class CellOfScreen {
    private boolean bidi;
    private boolean cjk;
    private boolean firstLetter;
    private FontEntry fontEntry;
    private boolean halfWord;
    private String lang;
    private int lineNumber;
    private String originWord;
    private int paraNumber;
    private PinPosition position;
    private boolean punctuation;
    private RectF rect;

    /* renamed from: rt */
    private boolean f52898rt;
    private int textOffset;
    private boolean whiteSpace;
    private String word;
    private WritingMode writingMode;

    public FontEntry getFontEntry() {
        return this.fontEntry;
    }

    public String getLang() {
        return this.lang;
    }

    public int getLineNumber() {
        return this.lineNumber;
    }

    public String getOriginWord() {
        return this.originWord;
    }

    public int getParaNumber() {
        return this.paraNumber;
    }

    public PinPosition getPosition() {
        return this.position;
    }

    public RectF getRect() {
        return this.rect;
    }

    public int getTextLength() {
        return this.originWord.length();
    }

    public int getTextOffset() {
        return this.textOffset;
    }

    public String getWord() {
        return this.word;
    }

    public WritingMode getWritingMode() {
        return this.writingMode;
    }

    public boolean isBidi() {
        return this.bidi;
    }

    public boolean isCjk() {
        return this.cjk;
    }

    public boolean isFirstLetter() {
        return this.firstLetter;
    }

    public boolean isHalfWord() {
        return this.halfWord;
    }

    public boolean isPunctuation() {
        return this.punctuation;
    }

    public boolean isRt() {
        return this.f52898rt;
    }

    public boolean isWhiteSpace() {
        return this.whiteSpace;
    }

    public CellOfScreen setBidi(boolean z) {
        this.bidi = z;
        return this;
    }

    public CellOfScreen setCjk(boolean z) {
        this.cjk = z;
        return this;
    }

    public CellOfScreen setFirstLetter(boolean z) {
        this.firstLetter = z;
        return this;
    }

    public CellOfScreen setFontEntry(FontEntry fontEntry) {
        this.fontEntry = fontEntry;
        return this;
    }

    public CellOfScreen setHalfWord(boolean z) {
        this.halfWord = z;
        return this;
    }

    public CellOfScreen setLang(String str) {
        this.lang = str;
        return this;
    }

    public CellOfScreen setLineNumber(int i) {
        this.lineNumber = i;
        return this;
    }

    public CellOfScreen setOriginWord(String str) {
        this.originWord = str;
        return this;
    }

    public CellOfScreen setParaNumber(int i) {
        this.paraNumber = i;
        return this;
    }

    public CellOfScreen setPosition(PinPosition pinPosition) {
        this.position = pinPosition;
        return this;
    }

    public CellOfScreen setPunctuation(boolean z) {
        this.punctuation = z;
        return this;
    }

    public CellOfScreen setRect(RectF rectF) {
        this.rect = rectF;
        return this;
    }

    public CellOfScreen setRt(boolean z) {
        this.f52898rt = z;
        return this;
    }

    public CellOfScreen setTextOffset(int i) {
        this.textOffset = i;
        return this;
    }

    public CellOfScreen setWhiteSpace(boolean z) {
        this.whiteSpace = z;
        return this;
    }

    public CellOfScreen setWord(String str) {
        this.word = str;
        return this;
    }

    public CellOfScreen setWritingMode(WritingMode writingMode) {
        this.writingMode = writingMode;
        return this;
    }

    public String toString() {
        return "CellOfScreen{rect=" + this.rect + ", word='" + this.word + Chars.QUOTE + ", originWord='" + this.originWord + Chars.QUOTE + ", lang='" + this.lang + Chars.QUOTE + ", writingMode=" + this.writingMode + ", position=" + this.position + ", textOffset=" + this.textOffset + ", lineNumber=" + this.lineNumber + ", paraNumber=" + this.paraNumber + ", halfWord=" + this.halfWord + ", whiteSpace=" + this.whiteSpace + ", punctuation=" + this.punctuation + ", cjk=" + this.cjk + ", rt=" + this.f52898rt + ", bidi=" + this.bidi + ", firstLetter=" + this.firstLetter + ", fontEntry=" + this.fontEntry + '}';
    }
}
