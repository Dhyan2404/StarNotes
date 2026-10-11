package com.onyx.engine.sdk;

/* loaded from: classes8.dex */
public class SentenceParameter {
    public static String DEFAULT_BREAK_SPLITTER = "，,.?!՜՞؟۔܀܁܂߹।॥၊။።፧፨᙮᠃᠉᥄᥅᪨᪩᪪᪫᭚᭛᭞᭟᭝᰻᰼᱾᱿‼‽⁇⁈⁉⸮。꓿꘎꘏꛳꛷꡶꡷꣎꣏꤯꧈꧉꩝꩞꩟꫰꫱꯫﹒﹖﹗！．？｡𐁇𐁈𑂾𑂿𑅁𑅂𑅃𑇅𑇆𑇍𑈻𑈼𑗂𑗃𑗉𑙁𑙂𑜼𑜽𒑰𒑱𐩐𐩑𐩒𐩓𐩔𐩕𐩖𐩗𐩘";
    public static final int MAX_SENTENCE_LENGTH = 200;
    public static final int MAX_SENTENCE_LIMIT = 10;
    PinPosition start = new PinPosition();
    PinPosition end = new PinPosition();
    int limit = 10;
    int maxSentenceLength = 200;
    boolean updateChapter = true;
    boolean filterBlankSentence = true;
    String breakSplitter = DEFAULT_BREAK_SPLITTER;

    public String getBreakSplitter() {
        return this.breakSplitter;
    }

    public PinPosition getEnd() {
        return this.end;
    }

    public int getLimit() {
        return this.limit;
    }

    public int getMaxSentenceLength() {
        return this.maxSentenceLength;
    }

    public PinPosition getStart() {
        return this.start;
    }

    public boolean isFilterBlankSentence() {
        return this.filterBlankSentence;
    }

    public boolean isUpdateChapter() {
        return this.updateChapter;
    }

    public SentenceParameter setBreakSplitter(String str) {
        this.breakSplitter = str;
        return this;
    }

    public SentenceParameter setEnd(PinPosition pinPosition) {
        this.end = pinPosition;
        return this;
    }

    public SentenceParameter setFilterBlankSentence(boolean z) {
        this.filterBlankSentence = z;
        return this;
    }

    public SentenceParameter setLimit(int i) {
        this.limit = i;
        return this;
    }

    public SentenceParameter setMaxSentenceLength(int i) {
        this.maxSentenceLength = i;
        return this;
    }

    public SentenceParameter setStart(PinPosition pinPosition) {
        this.start = pinPosition;
        return this;
    }

    public SentenceParameter setUpdateChapter(boolean z) {
        this.updateChapter = z;
        return this;
    }

    public String toJson() {
        return JsonUtils.toJson(this);
    }
}
