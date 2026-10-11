package org.apache.poi.ss.formula.function;

import java.util.Map;
import java.util.Set;

/* loaded from: classes13.dex */
public final class FunctionMetadataRegistry {
    public static final int FUNCTION_INDEX_CHOOSE = 100;
    public static final short FUNCTION_INDEX_EXTERNAL = 255;
    public static final int FUNCTION_INDEX_IF = 1;
    public static final short FUNCTION_INDEX_INDIRECT = 148;
    public static final short FUNCTION_INDEX_SUM = 4;
    public static final String FUNCTION_NAME_IF = "IF";
    private static FunctionMetadataRegistry _instance;
    private static FunctionMetadataRegistry _instanceCetab;
    private final FunctionMetadata[] _functionDataByIndex;
    private final Map<String, FunctionMetadata> _functionDataByName;

    public FunctionMetadataRegistry(FunctionMetadata[] functionMetadataArr, Map<String, FunctionMetadata> map) {
        this._functionDataByIndex = functionMetadataArr == null ? null : (FunctionMetadata[]) functionMetadataArr.clone();
        this._functionDataByName = map;
    }

    public static FunctionMetadata getCetabFunctionByIndex(int i) {
        return getInstanceCetab().getFunctionByIndexInternal(i);
    }

    public static FunctionMetadata getFunctionByIndex(int i) {
        return getInstance().getFunctionByIndexInternal(i);
    }

    private FunctionMetadata getFunctionByIndexInternal(int i) {
        return this._functionDataByIndex[i];
    }

    public static FunctionMetadata getFunctionByName(String str) {
        FunctionMetadata functionByNameInternal = getInstance().getFunctionByNameInternal(str);
        return functionByNameInternal == null ? getInstanceCetab().getFunctionByNameInternal(str) : functionByNameInternal;
    }

    private FunctionMetadata getFunctionByNameInternal(String str) {
        return this._functionDataByName.get(str);
    }

    private static FunctionMetadataRegistry getInstance() {
        if (_instance == null) {
            _instance = FunctionMetadataReader.createRegistry();
        }
        return _instance;
    }

    private static FunctionMetadataRegistry getInstanceCetab() {
        if (_instanceCetab == null) {
            _instanceCetab = FunctionMetadataReader.createRegistryCetab();
        }
        return _instanceCetab;
    }

    public static short lookupIndexByName(String str) {
        FunctionMetadata functionByNameInternal = getInstance().getFunctionByNameInternal(str);
        if (functionByNameInternal == null && (functionByNameInternal = getInstanceCetab().getFunctionByNameInternal(str)) == null) {
            return (short) -1;
        }
        return (short) functionByNameInternal.getIndex();
    }

    public Set<String> getAllFunctionNames() {
        return this._functionDataByName.keySet();
    }
}
