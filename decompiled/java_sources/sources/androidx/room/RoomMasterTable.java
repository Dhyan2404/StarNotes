package androidx.room;

import androidx.annotation.RestrictTo;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0007R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0006R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0006R\u0014\u0010\f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0006R\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0006R\u0014\u0010\u000e\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0006¨\u0006\u0011"}, m61528d2 = {"Landroidx/room/RoomMasterTable;", "", "", "hash", "createInsertQuery", "TABLE_NAME", Constants.STRING_SIG, "NAME", "a", "COLUMN_ID", "b", "COLUMN_IDENTITY_HASH", "DEFAULT_ID", "CREATE_QUERY", "READ_QUERY", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "room-common"}, m61529k = 1, m61530mv = {1, 7, 1})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public final class RoomMasterTable {

    @NotNull
    public static final String CREATE_QUERY = "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)";

    @NotNull
    public static final String DEFAULT_ID = "42";

    @NotNull
    public static final RoomMasterTable INSTANCE = new RoomMasterTable();

    @NotNull
    public static final String NAME = "room_master_table";

    @NotNull
    public static final String READ_QUERY = "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1";

    @NotNull
    public static final String TABLE_NAME = "room_master_table";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final String COLUMN_ID = "id";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String COLUMN_IDENTITY_HASH = "identity_hash";

    @JvmStatic
    @NotNull
    public static final String createInsertQuery(@NotNull String hash) {
        Intrinsics.checkNotNullParameter(hash, "hash");
        return "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '" + hash + "')";
    }
}
