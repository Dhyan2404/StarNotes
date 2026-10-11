package com.sun.org.apache.xalan.internal.xsltc.cmdline.getopt;

import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import org.mortbay.util.MultiPartWriter;

/* loaded from: classes10.dex */
public class GetOpt {
    private List theCmdArgs;
    private Option theCurrentOption = null;
    private OptionMatcher theOptionMatcher;
    private List theOptions;
    private ListIterator theOptionsIterator;

    /* loaded from: classes10.dex */
    public class Option {
        private char theArgLetter;
        private String theArgument = null;

        public Option(char c) {
            this.theArgLetter = c;
        }

        public char getArgLetter() {
            return this.theArgLetter;
        }

        public String getArgument() {
            return this.theArgument;
        }

        public boolean hasArg() {
            return this.theArgument != null;
        }

        public void setArg(String str) {
            this.theArgument = str;
        }
    }

    /* loaded from: classes10.dex */
    public class OptionMatcher {
        private String theOptString;

        public OptionMatcher(String str) {
            this.theOptString = str;
        }

        public boolean hasArg(char c) {
            int indexOf = this.theOptString.indexOf(c) + 1;
            return indexOf != this.theOptString.length() && this.theOptString.charAt(indexOf) == ':';
        }

        public boolean match(char c) {
            return this.theOptString.indexOf(c) != -1;
        }
    }

    public GetOpt(String[] strArr, String str) {
        this.theOptions = null;
        this.theCmdArgs = null;
        this.theOptionMatcher = null;
        this.theOptions = new ArrayList();
        this.theCmdArgs = new ArrayList();
        this.theOptionMatcher = new OptionMatcher(str);
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= strArr.length) {
                break;
            }
            String str2 = strArr[i2];
            int length = str2.length();
            if (str2.equals(MultiPartWriter.f115320h)) {
                i = i2 + 1;
                break;
            }
            if (str2.startsWith("-") && length == 2) {
                this.theOptions.add(new Option(str2.charAt(1)));
            } else if (str2.startsWith("-") && length > 2) {
                for (int i3 = 1; i3 < length; i3++) {
                    this.theOptions.add(new Option(str2.charAt(i3)));
                }
            } else if (str2.startsWith("-")) {
                continue;
            } else {
                if (this.theOptions.size() == 0) {
                    break;
                }
                Option option = (Option) this.theOptions.get(this.theOptions.size() - 1);
                char argLetter = option.getArgLetter();
                if (option.hasArg() || !this.theOptionMatcher.hasArg(argLetter)) {
                    break;
                } else {
                    option.setArg(str2);
                }
            }
            i2++;
        }
        i = i2;
        this.theOptionsIterator = this.theOptions.listIterator();
        while (i < strArr.length) {
            this.theCmdArgs.add(strArr[i]);
            i++;
        }
    }

    public String[] getCmdArgs() {
        String[] strArr = new String[this.theCmdArgs.size()];
        ListIterator listIterator = this.theCmdArgs.listIterator();
        int i = 0;
        while (listIterator.hasNext()) {
            strArr[i] = (String) listIterator.next();
            i++;
        }
        return strArr;
    }

    public int getNextOption() throws IllegalArgumentException, MissingOptArgException {
        if (!this.theOptionsIterator.hasNext()) {
            return -1;
        }
        Option option = (Option) this.theOptionsIterator.next();
        this.theCurrentOption = option;
        char argLetter = option.getArgLetter();
        boolean hasArg = this.theOptionMatcher.hasArg(argLetter);
        String argument = this.theCurrentOption.getArgument();
        if (!this.theOptionMatcher.match(argLetter)) {
            throw new IllegalArgumentException(new ErrorMsg(ErrorMsg.ILLEGAL_CMDLINE_OPTION_ERR, new Character(argLetter)).toString());
        }
        if (hasArg && argument == null) {
            throw new MissingOptArgException(new ErrorMsg(ErrorMsg.CMDLINE_OPT_MISSING_ARG_ERR, new Character(argLetter)).toString());
        }
        return argLetter;
    }

    public String getOptionArg() {
        String argument = this.theCurrentOption.getArgument();
        if (this.theOptionMatcher.hasArg(this.theCurrentOption.getArgLetter())) {
            return argument;
        }
        return null;
    }

    public void printOptions() {
        ListIterator listIterator = this.theOptions.listIterator();
        while (listIterator.hasNext()) {
            Option option = (Option) listIterator.next();
            System.out.print("OPT =" + option.getArgLetter());
            String argument = option.getArgument();
            if (argument != null) {
                System.out.print(" " + argument);
            }
            System.out.println();
        }
    }
}
