package org.apache.poi.ss.formula;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.logging.log4j.util.Chars;
import org.apache.poi.ss.usermodel.FormulaEvaluator;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes13.dex */
public final class CollaboratingWorkbooksEnvironment {
    public static final CollaboratingWorkbooksEnvironment EMPTY = new CollaboratingWorkbooksEnvironment();
    private final WorkbookEvaluator[] _evaluators;
    private final Map<String, WorkbookEvaluator> _evaluatorsByName;
    private boolean _unhooked;

    /* loaded from: classes13.dex */
    public static final class WorkbookNotFoundException extends Exception {
        private static final long serialVersionUID = 8787784539811167941L;

        public WorkbookNotFoundException(String str) {
            super(str);
        }
    }

    private CollaboratingWorkbooksEnvironment() {
        this._evaluatorsByName = Collections.emptyMap();
        this._evaluators = new WorkbookEvaluator[0];
    }

    private static void hookNewEnvironment(WorkbookEvaluator[] workbookEvaluatorArr, CollaboratingWorkbooksEnvironment collaboratingWorkbooksEnvironment) {
        int length = workbookEvaluatorArr.length;
        IEvaluationListener evaluationListener = workbookEvaluatorArr[0].getEvaluationListener();
        for (WorkbookEvaluator workbookEvaluator : workbookEvaluatorArr) {
            if (evaluationListener != workbookEvaluator.getEvaluationListener()) {
                throw new IllegalStateException("Workbook evaluators must all have the same evaluation listener");
            }
        }
        EvaluationCache evaluationCache = new EvaluationCache(evaluationListener);
        for (int i = 0; i < length; i++) {
            workbookEvaluatorArr[i].attachToEnvironment(collaboratingWorkbooksEnvironment, evaluationCache, i);
        }
    }

    public static void setup(String[] strArr, WorkbookEvaluator[] workbookEvaluatorArr) {
        int length = strArr.length;
        if (workbookEvaluatorArr.length == length) {
            if (length >= 1) {
                new CollaboratingWorkbooksEnvironment(strArr, workbookEvaluatorArr, length);
                return;
            }
            throw new IllegalArgumentException("Must provide at least one collaborating worbook");
        }
        throw new IllegalArgumentException("Number of workbook names is " + length + " but number of evaluators is " + workbookEvaluatorArr.length);
    }

    public static void setupFormulaEvaluator(Map<String, FormulaEvaluator> map) {
        HashMap hashMap = new HashMap(map.size());
        for (Map.Entry<String, FormulaEvaluator> entry : map.entrySet()) {
            String key = entry.getKey();
            FormulaEvaluator value = entry.getValue();
            if (!(value instanceof WorkbookEvaluatorProvider)) {
                throw new IllegalArgumentException("Formula Evaluator " + value + " provides no WorkbookEvaluator access");
            }
            hashMap.put(key, ((WorkbookEvaluatorProvider) value)._getWorkbookEvaluator());
        }
        setup(hashMap);
    }

    private static Map<String, WorkbookEvaluator> toUniqueMap(String[] strArr, WorkbookEvaluator[] workbookEvaluatorArr, int i) {
        HashMap hashMap = new HashMap((i * 3) / 2);
        for (int i2 = 0; i2 < i; i2++) {
            String str = strArr[i2];
            WorkbookEvaluator workbookEvaluator = workbookEvaluatorArr[i2];
            if (hashMap.containsKey(str)) {
                throw new IllegalArgumentException("Duplicate workbook name '" + str + CloudStorageConstants.SINGLE_QUOTES);
            }
            hashMap.put(str, workbookEvaluator);
        }
        return hashMap;
    }

    private void unhook() {
        WorkbookEvaluator[] workbookEvaluatorArr = this._evaluators;
        if (workbookEvaluatorArr.length < 1) {
            return;
        }
        for (WorkbookEvaluator workbookEvaluator : workbookEvaluatorArr) {
            workbookEvaluator.detachFromEnvironment();
        }
        this._unhooked = true;
    }

    private void unhookOldEnvironments(WorkbookEvaluator[] workbookEvaluatorArr) {
        HashSet hashSet = new HashSet();
        for (WorkbookEvaluator workbookEvaluator : workbookEvaluatorArr) {
            hashSet.add(workbookEvaluator.getEnvironment());
        }
        int size = hashSet.size();
        CollaboratingWorkbooksEnvironment[] collaboratingWorkbooksEnvironmentArr = new CollaboratingWorkbooksEnvironment[size];
        hashSet.toArray(collaboratingWorkbooksEnvironmentArr);
        for (int i = 0; i < size; i++) {
            collaboratingWorkbooksEnvironmentArr[i].unhook();
        }
    }

    public WorkbookEvaluator getWorkbookEvaluator(String str) throws WorkbookNotFoundException {
        if (this._unhooked) {
            throw new IllegalStateException("This environment has been unhooked");
        }
        WorkbookEvaluator workbookEvaluator = this._evaluatorsByName.get(str);
        if (workbookEvaluator != null) {
            return workbookEvaluator;
        }
        StringBuilder sb = new StringBuilder(256);
        sb.append("Could not resolve external workbook name '");
        sb.append(str);
        sb.append("'.");
        if (this._evaluators.length >= 1) {
            sb.append(" The following workbook names are valid: (");
            Iterator<String> it2 = this._evaluatorsByName.keySet().iterator();
            int i = 0;
            while (it2.hasNext()) {
                int i2 = i + 1;
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(Chars.QUOTE);
                sb.append(it2.next());
                sb.append(CloudStorageConstants.SINGLE_QUOTES);
                i = i2;
            }
            sb.append(')');
        } else {
            sb.append(" Workbook environment has not been set up.");
        }
        throw new WorkbookNotFoundException(sb.toString());
    }

    private CollaboratingWorkbooksEnvironment(String[] strArr, WorkbookEvaluator[] workbookEvaluatorArr, int i) {
        this(toUniqueMap(strArr, workbookEvaluatorArr, i), workbookEvaluatorArr);
    }

    private CollaboratingWorkbooksEnvironment(Map<String, WorkbookEvaluator> map, WorkbookEvaluator[] workbookEvaluatorArr) {
        IdentityHashMap identityHashMap = new IdentityHashMap(workbookEvaluatorArr.length);
        for (Map.Entry<String, WorkbookEvaluator> entry : map.entrySet()) {
            String str = (String) identityHashMap.put(entry.getValue(), entry.getKey());
            if (str != null) {
                throw new IllegalArgumentException("Attempted to register same workbook under names '" + str + "' and '" + entry.getKey() + CloudStorageConstants.SINGLE_QUOTES);
            }
        }
        unhookOldEnvironments(workbookEvaluatorArr);
        hookNewEnvironment(workbookEvaluatorArr, this);
        this._unhooked = false;
        this._evaluators = (WorkbookEvaluator[]) workbookEvaluatorArr.clone();
        this._evaluatorsByName = map;
    }

    public static void setup(Map<String, WorkbookEvaluator> map) {
        if (map.size() >= 1) {
            new CollaboratingWorkbooksEnvironment(map, (WorkbookEvaluator[]) map.values().toArray(new WorkbookEvaluator[0]));
            return;
        }
        throw new IllegalArgumentException("Must provide at least one collaborating worbook");
    }
}
