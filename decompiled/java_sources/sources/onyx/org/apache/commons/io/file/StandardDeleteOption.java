package onyx.org.apache.commons.io.file;

import java.util.function.Predicate;
import java.util.stream.Stream;
import onyx.org.apache.commons.io.IOUtils;
import onyx.org.apache.commons.io.file.DeleteOption;
import onyx.org.apache.commons.io.file.StandardDeleteOption;

/* loaded from: classes11.dex */
public enum StandardDeleteOption implements DeleteOption {
    OVERRIDE_READ_ONLY;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$overrideReadOnly$0(DeleteOption deleteOption) {
        return OVERRIDE_READ_ONLY == deleteOption;
    }

    public static boolean overrideReadOnly(DeleteOption[] deleteOptionArr) {
        if (IOUtils.length(deleteOptionArr) == 0) {
            return false;
        }
        return Stream.of((Object[]) deleteOptionArr).anyMatch(new Predicate() { // from class: com.sunia.HTREnginev2.lxm
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$overrideReadOnly$0;
                lambda$overrideReadOnly$0 = StandardDeleteOption.lambda$overrideReadOnly$0((DeleteOption) obj);
                return lambda$overrideReadOnly$0;
            }
        });
    }
}
