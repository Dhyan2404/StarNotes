package com.sun.org.apache.regexp.internal;

import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;

/* loaded from: classes10.dex */
public class RETest {
    static final String NEW_LINE = System.getProperty("line.separator");
    static final boolean showSuccesses = false;
    REDebugCompiler compiler = new REDebugCompiler();
    int testCount = 0;
    int failures = 0;

    private String findNextTest(BufferedReader bufferedReader) throws IOException {
        String str = "";
        while (bufferedReader.ready() && (str = bufferedReader.readLine()) != null) {
            str = str.trim();
            if (str.startsWith("#")) {
                break;
            }
            if (!str.equals("")) {
                say("Script error.  Line = " + str);
                System.exit(-1);
            }
        }
        return str;
    }

    private boolean getExpectedResult(String str) {
        if (HlsPlaylistParser.f26143N0.equals(str)) {
            return false;
        }
        if (HlsPlaylistParser.f26141M0.equals(str)) {
            return true;
        }
        die("Test script error!");
        return false;
    }

    private RETestCase getNextTestCase(BufferedReader bufferedReader) throws IOException {
        boolean z;
        String[] strArr;
        String findNextTest = findNextTest(bufferedReader);
        if (!bufferedReader.ready()) {
            return null;
        }
        String readLine = bufferedReader.readLine();
        String readLine2 = bufferedReader.readLine();
        boolean equals = "ERR".equals(readLine2);
        if (equals) {
            z = false;
        } else {
            z = getExpectedResult(bufferedReader.readLine().trim());
            if (z) {
                int parseInt = Integer.parseInt(bufferedReader.readLine().trim());
                strArr = new String[parseInt];
                for (int i = 0; i < parseInt; i++) {
                    strArr[i] = bufferedReader.readLine();
                }
                return new RETestCase(this, findNextTest, readLine, readLine2, equals, z, strArr);
            }
        }
        strArr = null;
        return new RETestCase(this, findNextTest, readLine, readLine2, equals, z, strArr);
    }

    public static void main(String[] strArr) {
        try {
            if (test(strArr)) {
                return;
            }
            System.exit(1);
        } catch (Exception e) {
            e.printStackTrace();
            System.exit(1);
        }
    }

    public static boolean test(String[] strArr) throws Exception {
        RETest rETest = new RETest();
        if (strArr.length == 2) {
            rETest.runInteractiveTests(strArr[1]);
        } else if (strArr.length == 1) {
            rETest.runAutomatedTests(strArr[0]);
        } else {
            System.out.println("Usage: RETest ([-i] [regex]) ([/path/to/testfile.txt])");
            System.out.println("By Default will run automated tests from file 'docs/RETest.txt' ...");
            System.out.println();
            rETest.runAutomatedTests("docs/RETest.txt");
        }
        return rETest.failures == 0;
    }

    private void testPrecompiledRE() {
        C13245RE c13245re = new C13245RE(new REProgram(new char[]{'|', 0, 26, '|', 0, '\r', 'A', 1, 4, 'a', '|', 0, 3, 'G', 0, 65526, '|', 0, 3, 'N', 0, 3, 'A', 1, 4, 'b', 'E', 0, 0}));
        say("a*b");
        boolean match = c13245re.match("aaab");
        say("aaab = " + match);
        showParens(c13245re);
        if (!match) {
            fail("\"aaab\" doesn't match to precompiled \"a*b\"");
        }
        boolean match2 = c13245re.match("b");
        say("b = " + match2);
        showParens(c13245re);
        if (!match2) {
            fail("\"b\" doesn't match to precompiled \"a*b\"");
        }
        boolean match3 = c13245re.match("c");
        say("c = " + match3);
        showParens(c13245re);
        if (match3) {
            fail("\"c\" matches to precompiled \"a*b\"");
        }
        boolean match4 = c13245re.match("ccccaaaaab");
        say("ccccaaaaab = " + match4);
        showParens(c13245re);
        if (match4) {
            return;
        }
        fail("\"ccccaaaaab\" doesn't match to precompiled \"a*b\"");
    }

    private void testSplitAndGrep() {
        String[] strArr = {"xxxx", "xxxx", "yyyy", "zzz"};
        String[] split = new C13245RE("a*b").split("xxxxaabxxxxbyyyyaaabzzz");
        for (int i = 0; i < 4 && i < split.length; i++) {
            assertEquals("Wrong splitted part", strArr[i], split[i]);
        }
        assertEquals("Wrong number of splitted parts", 4, split.length);
        String[] strArr2 = {"xxxx", "xxxx"};
        String[] grep = new C13245RE("x+").grep(split);
        for (int i2 = 0; i2 < grep.length; i2++) {
            say("s[" + i2 + "] = " + grep[i2]);
            assertEquals("Grep fails", strArr2[i2], grep[i2]);
        }
        assertEquals("Wrong number of string found by grep", 2, grep.length);
    }

    private void testSubst() {
        assertEquals("Wrong result of substitution in \"a*b\"", "-foo-garply-wacky-", new C13245RE("a*b").subst("aaaabfooaaabgarplyaaabwackyb", "-"));
        assertEquals("Wrong subst() result", "visit us: 1234<a href=\"http://www.apache.org\">http://www.apache.org</a>!", new C13245RE("http://[\\.\\w\\-\\?/~_@&=%]+").subst("visit us: http://www.apache.org!", "1234<a href=\"$0\">$0</a>", 2));
        assertEquals("Wrong subst() result", "variable_test_value12", new C13245RE("(.*?)=(.*)").subst("variable=value", "$1_test_$212", 2));
        assertEquals("Wrong subst() result", "b", new C13245RE("^a$").subst("a", "b", 2));
        assertEquals("Wrong subst() result", "\r\nb\r\n", new C13245RE("^a$", 2).subst("\r\na\r\n", "b", 2));
    }

    public void assertEquals(String str, String str2, String str3) {
        if ((str2 == null || str2.equals(str3)) && (str3 == null || str3.equals(str2))) {
            return;
        }
        fail(str + " (expected \"" + str2 + "\", actual \"" + str3 + "\")");
    }

    public void die(String str) {
        say("FATAL ERROR: " + str);
        System.exit(-1);
    }

    public void fail(StringBuffer stringBuffer, String str) {
        System.out.print(stringBuffer.toString());
        fail(str);
    }

    public void runAutomatedTests(String str) throws Exception {
        long currentTimeMillis = System.currentTimeMillis();
        testPrecompiledRE();
        testSplitAndGrep();
        testSubst();
        testOther();
        File file = new File(str);
        if (!file.exists()) {
            throw new Exception("Could not find: " + str);
        }
        BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
        while (bufferedReader.ready()) {
            try {
                RETestCase nextTestCase = getNextTestCase(bufferedReader);
                if (nextTestCase != null) {
                    nextTestCase.runTest();
                }
            } catch (Throwable th) {
                bufferedReader.close();
                throw th;
            }
        }
        bufferedReader.close();
        StringBuilder sb = new StringBuilder();
        String str2 = NEW_LINE;
        sb.append(str2);
        sb.append(str2);
        sb.append("Match time = ");
        sb.append(System.currentTimeMillis() - currentTimeMillis);
        sb.append(" ms.");
        say(sb.toString());
        if (this.failures > 0) {
            say("*************** THERE ARE FAILURES! *******************");
        }
        say("Tests complete.  " + this.testCount + " tests, " + this.failures + " failure(s).");
    }

    public void runInteractiveTests(String str) {
        C13245RE c13245re = new C13245RE();
        try {
            c13245re.setProgram(this.compiler.compile(str));
            StringBuilder sb = new StringBuilder();
            sb.append("");
            String str2 = NEW_LINE;
            sb.append(str2);
            sb.append("");
            sb.append(str);
            sb.append("");
            sb.append(str2);
            sb.append("");
            say(sb.toString());
            PrintWriter printWriter = new PrintWriter(System.out);
            this.compiler.dumpProgram(printWriter);
            printWriter.flush();
            boolean z = true;
            while (z) {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));
                System.out.print("> ");
                System.out.flush();
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    if (c13245re.match(readLine)) {
                        say("Match successful.");
                    } else {
                        say("Match failed.");
                    }
                    showParens(c13245re);
                } else {
                    System.out.println();
                    z = false;
                }
            }
        } catch (Exception e) {
            say("Error: " + e.toString());
            e.printStackTrace();
        }
    }

    public void say(String str) {
        System.out.println(str);
    }

    public void showParens(C13245RE c13245re) {
        for (int i = 0; i < c13245re.getParenCount(); i++) {
            say("$" + i + CloudStorageConstants.OPERATION_EQUAL + c13245re.getParen(i));
        }
    }

    public void testOther() throws Exception {
        C13245RE c13245re = new C13245RE("(a*)b");
        say("Serialized/deserialized (a*)b");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(128);
        new ObjectOutputStream(byteArrayOutputStream).writeObject(c13245re);
        C13245RE c13245re2 = (C13245RE) new ObjectInputStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray())).readObject();
        if (c13245re2.match("aaab")) {
            say("aaaab = true");
            showParens(c13245re2);
        } else {
            fail("Did not match 'aaab' with deserialized RE.");
        }
        byteArrayOutputStream.reset();
        say("Deserialized (a*)b");
        new ObjectOutputStream(byteArrayOutputStream).writeObject(c13245re2);
        C13245RE c13245re3 = (C13245RE) new ObjectInputStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray())).readObject();
        if (c13245re3.getParenCount() != 0) {
            fail("Has parens after deserialization.");
        }
        if (c13245re3.match("aaab")) {
            say("aaaab = true");
            showParens(c13245re3);
        } else {
            fail("Did not match 'aaab' with deserialized RE.");
        }
        C13245RE c13245re4 = new C13245RE("abc(\\w*)");
        say("MATCH_CASEINDEPENDENT abc(\\w*)");
        c13245re4.setMatchFlags(1);
        say("abc(d*)");
        if (c13245re4.match("abcddd")) {
            say("abcddd = true");
            showParens(c13245re4);
        } else {
            fail("Did not match 'abcddd'.");
        }
        if (c13245re4.match("aBcDDdd")) {
            say("aBcDDdd = true");
            showParens(c13245re4);
        } else {
            fail("Did not match 'aBcDDdd'.");
        }
        if (c13245re4.match("ABCDDDDD")) {
            say("ABCDDDDD = true");
            showParens(c13245re4);
        } else {
            fail("Did not match 'ABCDDDDD'.");
        }
        C13245RE c13245re5 = new C13245RE("(A*)b\\1");
        c13245re5.setMatchFlags(1);
        if (c13245re5.match("AaAaaaBAAAAAA")) {
            say("AaAaaaBAAAAAA = true");
            showParens(c13245re5);
        } else {
            fail("Did not match 'AaAaaaBAAAAAA'.");
        }
        C13245RE c13245re6 = new C13245RE("[A-Z]*");
        c13245re6.setMatchFlags(1);
        if (c13245re6.match("CaBgDe12")) {
            say("CaBgDe12 = true");
            showParens(c13245re6);
        } else {
            fail("Did not match 'CaBgDe12'.");
        }
        C13245RE c13245re7 = new C13245RE("^abc$", 2);
        if (!c13245re7.match("\nabc")) {
            fail("\"\\nabc\" doesn't match \"^abc$\"");
        }
        if (!c13245re7.match("\rabc")) {
            fail("\"\\rabc\" doesn't match \"^abc$\"");
        }
        if (!c13245re7.match("\r\nabc")) {
            fail("\"\\r\\nabc\" doesn't match \"^abc$\"");
        }
        if (!c13245re7.match("\u0085abc")) {
            fail("\"\\u0085abc\" doesn't match \"^abc$\"");
        }
        if (!c13245re7.match("\u2028abc")) {
            fail("\"\\u2028abc\" doesn't match \"^abc$\"");
        }
        if (!c13245re7.match("\u2029abc")) {
            fail("\"\\u2029abc\" doesn't match \"^abc$\"");
        }
        C13245RE c13245re8 = new C13245RE("^a.*b$", 2);
        if (c13245re8.match("a\nb")) {
            fail("\"a\\nb\" matches \"^a.*b$\"");
        }
        if (c13245re8.match("a\rb")) {
            fail("\"a\\rb\" matches \"^a.*b$\"");
        }
        if (c13245re8.match("a\r\nb")) {
            fail("\"a\\r\\nb\" matches \"^a.*b$\"");
        }
        if (c13245re8.match("a\u0085b")) {
            fail("\"a\\u0085b\" matches \"^a.*b$\"");
        }
        if (c13245re8.match("a\u2028b")) {
            fail("\"a\\u2028b\" matches \"^a.*b$\"");
        }
        if (c13245re8.match("a\u2029b")) {
            fail("\"a\\u2029b\" matches \"^a.*b$\"");
        }
    }

    public void assertEquals(String str, int i, int i2) {
        if (i != i2) {
            fail(str + " (expected \"" + i + "\", actual \"" + i2 + "\")");
        }
    }

    public void fail(String str) {
        this.failures++;
        StringBuilder sb = new StringBuilder();
        sb.append("");
        String str2 = NEW_LINE;
        sb.append(str2);
        sb.append("");
        say(sb.toString());
        say("*******************************************************");
        say("*********************  FAILURE!  **********************");
        say("*******************************************************");
        say("" + str2 + "");
        say(str);
        say("");
        if (this.compiler != null) {
            PrintWriter printWriter = new PrintWriter(System.out);
            this.compiler.dumpProgram(printWriter);
            printWriter.flush();
            say("" + str2 + "");
        }
    }
}
