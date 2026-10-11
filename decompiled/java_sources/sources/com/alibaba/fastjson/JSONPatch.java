package com.alibaba.fastjson;

import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexerBase;
import org.apache.commons.text.AlphabetConverter;

/* loaded from: classes3.dex */
public class JSONPatch {

    /* renamed from: com.alibaba.fastjson.JSONPatch$1 */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C17131 {
        static final /* synthetic */ int[] $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType;

        static {
            int[] iArr = new int[OperationType.values().length];
            $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType = iArr;
            try {
                iArr[OperationType.add.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType[OperationType.replace.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType[OperationType.remove.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType[OperationType.copy.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType[OperationType.move.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType[OperationType.test.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    @JSONType(orders = {"op", "from", "path", "value"})
    /* loaded from: classes3.dex */
    public static class Operation {
        public String from;
        public String path;

        @JSONField(name = "op")
        public OperationType type;
        public Object value;
    }

    /* loaded from: classes3.dex */
    public enum OperationType {
        add,
        remove,
        replace,
        move,
        copy,
        test
    }

    public static String apply(String str, String str2) {
        return JSON.toJSONString(apply(JSON.parse(str, Feature.OrderedField), str2));
    }

    private static boolean isObject(String str) {
        if (str == null) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (!JSONLexerBase.isWhitespace(charAt)) {
                return charAt == '{';
            }
        }
        return false;
    }

    public static Object apply(Object obj, String str) {
        for (Operation operation : isObject(str) ? new Operation[]{(Operation) JSON.parseObject(str, Operation.class)} : (Operation[]) JSON.parseObject(str, Operation[].class)) {
            JSONPath compile = JSONPath.compile(operation.path);
            switch (C17131.$SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType[operation.type.ordinal()]) {
                case 1:
                    compile.patchAdd(obj, operation.value, false);
                    break;
                case 2:
                    compile.patchAdd(obj, operation.value, true);
                    break;
                case 3:
                    compile.remove(obj);
                    break;
                case 4:
                case 5:
                    JSONPath compile2 = JSONPath.compile(operation.from);
                    Object eval = compile2.eval(obj);
                    if (operation.type == OperationType.move && !compile2.remove(obj)) {
                        throw new JSONException("json patch move error : " + operation.from + AlphabetConverter.f109940d + operation.path);
                    }
                    compile.set(obj, eval);
                    break;
                case 6:
                    Object eval2 = compile.eval(obj);
                    if (eval2 == null) {
                        return Boolean.valueOf(operation.value == null);
                    }
                    return Boolean.valueOf(eval2.equals(operation.value));
            }
        }
        return obj;
    }
}
