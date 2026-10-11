package org.apache.poi.ss.formula.function;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
import org.apache.poi.util.IOUtils;

/* loaded from: classes13.dex */
final class FunctionMetadataReader {
    private static final int DEFAULT_MAX_RECORD_LENGTH = 100000;
    private static final String[] DIGIT_ENDING_FUNCTION_NAMES;
    private static final Set<String> DIGIT_ENDING_FUNCTION_NAMES_SET;
    private static final String ELLIPSIS = "...";
    private static int MAX_RECORD_LENGTH = 100000;
    private static final String METADATA_FILE_NAME = "functionMetadata.txt";
    private static final String METADATA_FILE_NAME_CETAB = "functionMetadataCetab.txt";
    private static final Pattern TAB_DELIM_PATTERN = Pattern.compile("\t");
    private static final Pattern SPACE_DELIM_PATTERN = Pattern.compile(" ");
    private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];

    static {
        String[] strArr = {"LOG10", "ATAN2", "DAYS360", "SUMXMY2", "SUMX2MY2", "SUMX2PY2", "A1.R1C1"};
        DIGIT_ENDING_FUNCTION_NAMES = strArr;
        DIGIT_ENDING_FUNCTION_NAMES_SET = new HashSet(Arrays.asList(strArr));
    }

    public static FunctionMetadataRegistry createRegistry() {
        FunctionDataBuilder functionDataBuilder = new FunctionDataBuilder(CloudStorageConstants.ONE_NOTE_IMAGE_SHOW_WIDTH);
        readResourceFile(functionDataBuilder, METADATA_FILE_NAME);
        return functionDataBuilder.build();
    }

    public static FunctionMetadataRegistry createRegistryCetab() {
        FunctionDataBuilder functionDataBuilder = new FunctionDataBuilder(CloudStorageConstants.ONE_NOTE_IMAGE_SHOW_WIDTH);
        readResourceFile(functionDataBuilder, METADATA_FILE_NAME_CETAB);
        return functionDataBuilder.build();
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    private static boolean isDash(String str) {
        return str.length() == 1 && str.charAt(0) == '-';
    }

    private static int parseInt(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            throw new IllegalStateException("Value '" + str + "' could not be parsed as an integer");
        }
    }

    private static byte parseOperandTypeCode(String str) {
        if (str.length() != 1) {
            throw new IllegalStateException("Bad operand type code format '" + str + "' expected single char");
        }
        char charAt = str.charAt(0);
        if (charAt == 'A') {
            return (byte) 64;
        }
        if (charAt == 'R') {
            return (byte) 0;
        }
        if (charAt == 'V') {
            return (byte) 32;
        }
        throw new IllegalArgumentException("Unexpected operand type code '" + str + "' (" + ((int) str.charAt(0)) + MotionUtils.f31762d);
    }

    private static byte[] parseOperandTypeCodes(String str) {
        if (str.length() >= 1 && !isDash(str)) {
            String[] split = SPACE_DELIM_PATTERN.split(str);
            int length = split.length;
            if ("...".equals(split[length - 1])) {
                length--;
            }
            byte[] safelyAllocate = IOUtils.safelyAllocate(length, MAX_RECORD_LENGTH);
            for (int i = 0; i < length; i++) {
                safelyAllocate[i] = parseOperandTypeCode(split[i]);
            }
            return safelyAllocate;
        }
        return EMPTY_BYTE_ARRAY;
    }

    private static byte parseReturnTypeCode(String str) {
        if (str.length() == 0) {
            return (byte) 0;
        }
        return parseOperandTypeCode(str);
    }

    private static void processLine(FunctionDataBuilder functionDataBuilder, String str) {
        String[] split = TAB_DELIM_PATTERN.split(str, -2);
        if (split.length != 8) {
            throw new IllegalStateException("Bad line format '" + str + "' - expected 8 data fields delimited by tab, but had " + split.length + ": " + Arrays.toString(split));
        }
        int parseInt = parseInt(split[0]);
        String str2 = split[1];
        int parseInt2 = parseInt(split[2]);
        int parseInt3 = parseInt(split[3]);
        byte parseReturnTypeCode = parseReturnTypeCode(split[4]);
        byte[] parseOperandTypeCodes = parseOperandTypeCodes(split[5]);
        boolean z = split[7].length() > 0;
        validateFunctionName(str2);
        functionDataBuilder.add(parseInt, str2, parseInt2, parseInt3, parseReturnTypeCode, parseOperandTypeCodes, z);
    }

    /* JADX WARN: Finally extract failed */
    private static void readResourceFile(FunctionDataBuilder functionDataBuilder, String str) {
        try {
            InputStream resourceAsStream = FunctionMetadataReader.class.getResourceAsStream(str);
            try {
                if (resourceAsStream == null) {
                    throw new IllegalStateException("resource '" + str + "' not found");
                }
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(resourceAsStream, StandardCharsets.UTF_8));
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            bufferedReader.close();
                            resourceAsStream.close();
                            return;
                        } else if (readLine.length() >= 1 && readLine.charAt(0) != '#' && readLine.trim().length() >= 1) {
                            processLine(functionDataBuilder, readLine);
                        }
                    } finally {
                    }
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } finally {
                }
            }
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    private static void validateFunctionName(String str) {
        int length = str.length() - 1;
        if (Character.isDigit(str.charAt(length))) {
            while (length >= 0 && Character.isDigit(str.charAt(length))) {
                length--;
            }
            if (DIGIT_ENDING_FUNCTION_NAMES_SET.contains(str)) {
                return;
            }
            throw new IllegalStateException("Invalid function name '" + str + "' (is footnote number incorrectly appended)");
        }
    }
}
