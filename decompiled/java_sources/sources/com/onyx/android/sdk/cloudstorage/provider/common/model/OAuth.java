package com.onyx.android.sdk.cloudstorage.provider.common.model;

import com.dropbox.core.android.AuthActivity;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0003\u0003\u0004\u0005B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth;", "", "()V", "GrantType", "ResponseType", "TokenType", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OAuth {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$GrantType;", "", "(Ljava/lang/String;I)V", "toString", "", "AUTHORIZATION_CODE", AuthActivity.EXTRA_REFRESH_TOKEN, "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class GrantType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ GrantType[] $VALUES;
        public static final GrantType AUTHORIZATION_CODE = new GrantType("AUTHORIZATION_CODE", 0);
        public static final GrantType REFRESH_TOKEN = new GrantType(AuthActivity.EXTRA_REFRESH_TOKEN, 1);

        private static final /* synthetic */ GrantType[] $values() {
            return new GrantType[]{AUTHORIZATION_CODE, REFRESH_TOKEN};
        }

        static {
            GrantType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private GrantType(String str, int i) {
        }

        @NotNull
        public static EnumEntries<GrantType> getEntries() {
            return $ENTRIES;
        }

        public static GrantType valueOf(String str) {
            return (GrantType) Enum.valueOf(GrantType.class, str);
        }

        public static GrantType[] values() {
            return (GrantType[]) $VALUES.clone();
        }

        @Override // java.lang.Enum
        @NotNull
        public String toString() {
            String name = name();
            Locale locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
            String lowerCase = name.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            return lowerCase;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$ResponseType;", "", "(Ljava/lang/String;I)V", "CODE", "TOKEN", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class ResponseType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ResponseType[] $VALUES;
        public static final ResponseType CODE = new ResponseType("CODE", 0);
        public static final ResponseType TOKEN = new ResponseType("TOKEN", 1);

        private static final /* synthetic */ ResponseType[] $values() {
            return new ResponseType[]{CODE, TOKEN};
        }

        static {
            ResponseType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private ResponseType(String str, int i) {
        }

        @NotNull
        public static EnumEntries<ResponseType> getEntries() {
            return $ENTRIES;
        }

        public static ResponseType valueOf(String str) {
            return (ResponseType) Enum.valueOf(ResponseType.class, str);
        }

        public static ResponseType[] values() {
            return (ResponseType[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003¨\u0006\u0004"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/model/OAuth$TokenType;", "", "(Ljava/lang/String;I)V", "BEARER", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class TokenType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ TokenType[] $VALUES;
        public static final TokenType BEARER = new TokenType("BEARER", 0);

        private static final /* synthetic */ TokenType[] $values() {
            return new TokenType[]{BEARER};
        }

        static {
            TokenType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private TokenType(String str, int i) {
        }

        @NotNull
        public static EnumEntries<TokenType> getEntries() {
            return $ENTRIES;
        }

        public static TokenType valueOf(String str) {
            return (TokenType) Enum.valueOf(TokenType.class, str);
        }

        public static TokenType[] values() {
            return (TokenType[]) $VALUES.clone();
        }
    }
}
