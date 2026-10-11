package com.sun.org.apache.regexp.internal;

import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser;
import com.google.android.material.motion.MotionUtils;
import java.io.StringBufferInputStream;
import java.io.StringReader;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class RETestCase {
    private final boolean badPattern;
    private final StringBuffer log = new StringBuffer();
    private final int number;
    private final String[] parens;
    private final String pattern;
    private C13245RE regexp;
    private final boolean shouldMatch;
    private final String tag;
    private final RETest test;
    private final String toMatch;

    public RETestCase(RETest rETest, String str, String str2, String str3, boolean z, boolean z2, String[] strArr) {
        int i = rETest.testCount + 1;
        rETest.testCount = i;
        this.number = i;
        this.test = rETest;
        this.tag = str;
        this.pattern = str2;
        this.toMatch = str3;
        this.badPattern = z;
        this.shouldMatch = z2;
        if (strArr == null) {
            this.parens = null;
            return;
        }
        this.parens = new String[strArr.length];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            this.parens[i2] = strArr[i2];
        }
    }

    private boolean checkParens() {
        this.log.append("   Paren count: " + this.regexp.getParenCount() + "\n");
        if (!assertEquals(this.log, "Wrong number of parens", this.parens.length, this.regexp.getParenCount())) {
            return false;
        }
        for (int i = 0; i < this.regexp.getParenCount(); i++) {
            this.log.append("   Paren " + i + ": " + this.regexp.getParen(i) + "\n");
            if (!"null".equals(this.parens[i]) || this.regexp.getParen(i) != null) {
                if (!assertEquals(this.log, "Wrong register " + i, this.parens[i], this.regexp.getParen(i))) {
                    return false;
                }
            }
        }
        return true;
    }

    private boolean checkResult(boolean z) {
        boolean z2 = this.shouldMatch;
        if (z == z2) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.shouldMatch ? "Matched" : "Did not match");
            sb.append(" \"");
            sb.append(this.toMatch);
            sb.append("\", as expected:");
            success(sb.toString());
            return true;
        }
        if (z2) {
            this.test.fail(this.log, "Did not match \"" + this.toMatch + "\", when expected to.");
            return false;
        }
        this.test.fail(this.log, "Matched \"" + this.toMatch + "\", when not expected to.");
        return false;
    }

    private void testMatch() {
        this.log.append("   Match against: '" + this.toMatch + "'\n");
        try {
            boolean match = this.regexp.match(this.toMatch);
            StringBuffer stringBuffer = this.log;
            StringBuilder sb = new StringBuilder();
            sb.append("   Matched: ");
            sb.append(match ? HlsPlaylistParser.f26141M0 : HlsPlaylistParser.f26143N0);
            sb.append("\n");
            stringBuffer.append(sb.toString());
            if (checkResult(match)) {
                if (!this.shouldMatch || checkParens()) {
                    this.log.append("   Match using StringCharacterIterator\n");
                    if (tryMatchUsingCI(new StringCharacterIterator(this.toMatch))) {
                        this.log.append("   Match using CharacterArrayCharacterIterator\n");
                        if (tryMatchUsingCI(new CharacterArrayCharacterIterator(this.toMatch.toCharArray(), 0, this.toMatch.length()))) {
                            this.log.append("   Match using StreamCharacterIterator\n");
                            if (tryMatchUsingCI(new StreamCharacterIterator(new StringBufferInputStream(this.toMatch)))) {
                                this.log.append("   Match using ReaderCharacterIterator\n");
                                tryMatchUsingCI(new ReaderCharacterIterator(new StringReader(this.toMatch)));
                            }
                        }
                    }
                }
            }
        } catch (Error e) {
            this.test.fail(this.log, "Matcher threw fatal error \"" + e.getMessage() + "\"");
            e.printStackTrace();
        } catch (Exception e2) {
            this.test.fail(this.log, "Matcher threw exception: " + e2.toString());
            e2.printStackTrace();
        }
    }

    public boolean assertEquals(StringBuffer stringBuffer, String str, String str2, String str3) {
        if ((str2 == null || str2.equals(str3)) && (str3 == null || str3.equals(str2))) {
            return true;
        }
        this.test.fail(stringBuffer, str + " (expected \"" + str2 + "\", actual \"" + str3 + "\")");
        return false;
    }

    public void runTest() {
        this.test.say(this.tag + MotionUtils.f31761c + this.number + "): " + this.pattern);
        if (testCreation()) {
            testMatch();
        }
    }

    public void success(String str) {
    }

    public boolean testCreation() {
        try {
            C13245RE c13245re = new C13245RE();
            this.regexp = c13245re;
            c13245re.setProgram(this.test.compiler.compile(this.pattern));
            if (!this.badPattern) {
                return true;
            }
            this.test.fail(this.log, "Was expected to be an error, but wasn't.");
            return false;
        } catch (Error e) {
            this.test.fail(this.log, "Compiler threw fatal error \"" + e.getMessage() + "\"");
            e.printStackTrace();
            return false;
        } catch (Exception e2) {
            if (this.badPattern) {
                this.log.append("   Match: ERR\n");
                success("Produces an error (" + e2.toString() + "), as expected.");
                return false;
            }
            String obj = e2.getMessage() == null ? e2.toString() : e2.getMessage();
            this.test.fail(this.log, "Produces an unexpected exception \"" + obj + "\"");
            e2.printStackTrace();
            return false;
        }
    }

    public boolean tryMatchUsingCI(CharacterIterator characterIterator) {
        try {
            boolean match = this.regexp.match(characterIterator, 0);
            StringBuffer stringBuffer = this.log;
            StringBuilder sb = new StringBuilder();
            sb.append("   Match: ");
            sb.append(match ? HlsPlaylistParser.f26141M0 : HlsPlaylistParser.f26143N0);
            sb.append("\n");
            stringBuffer.append(sb.toString());
            if (!checkResult(match)) {
                return false;
            }
            if (this.shouldMatch) {
                if (!checkParens()) {
                    return false;
                }
            }
            return true;
        } catch (Error e) {
            this.test.fail(this.log, "Matcher threw fatal error \"" + e.getMessage() + "\"");
            e.printStackTrace();
            return false;
        } catch (Exception e2) {
            this.test.fail(this.log, "Matcher threw exception: " + e2.toString());
            e2.printStackTrace();
            return false;
        }
    }

    public boolean assertEquals(StringBuffer stringBuffer, String str, int i, int i2) {
        if (i == i2) {
            return true;
        }
        this.test.fail(stringBuffer, str + " (expected \"" + i + "\", actual \"" + i2 + "\")");
        return false;
    }
}
