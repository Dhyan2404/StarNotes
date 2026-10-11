package com.onyx.android.sdk.data.account;

import androidx.transition.Transition;
import com.couchbase.lite.internal.core.C4Replicator;
import com.google.android.gms.common.Scopes;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.data.account.bean.AccountPermissionData;
import com.onyx.android.sdk.data.account.bean.AccountProfile;
import com.onyx.android.sdk.data.account.bean.AccountQuotaItemData;
import com.onyx.android.sdk.data.account.bean.BindPhoneOrEmailArgs;
import com.onyx.android.sdk.data.account.bean.ChannelAuthData;
import com.onyx.android.sdk.data.account.bean.CheckAccountStatusArgs;
import com.onyx.android.sdk.data.account.bean.CheckAccountStatusData;
import com.onyx.android.sdk.data.account.bean.CheckInRecord;
import com.onyx.android.sdk.data.account.bean.CheckPhoneOrEmailBody;
import com.onyx.android.sdk.data.account.bean.CloudOnyxAccount;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.data.account.bean.Device;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.onyx.android.sdk.data.account.bean.DevicePushBean;
import com.onyx.android.sdk.data.account.bean.EmailBindStateCheckArgs;
import com.onyx.android.sdk.data.account.bean.EmailFormatCheckArgs;
import com.onyx.android.sdk.data.account.bean.FormatCheckResult;
import com.onyx.android.sdk.data.account.bean.GoogleAuthParams;
import com.onyx.android.sdk.data.account.bean.GoogleVerifyArgs;
import com.onyx.android.sdk.data.account.bean.HWRActivationState;
import com.onyx.android.sdk.data.account.bean.HuaweiAuthParams;
import com.onyx.android.sdk.data.account.bean.HuaweiVerifyArgs;
import com.onyx.android.sdk.data.account.bean.LoginByPasswordParams;
import com.onyx.android.sdk.data.account.bean.MicrosoftAuthParams;
import com.onyx.android.sdk.data.account.bean.MicrosoftVerifyArgs;
import com.onyx.android.sdk.data.account.bean.PasswordForgetArgs;
import com.onyx.android.sdk.data.account.bean.PhoneBindStateCheckArgs;
import com.onyx.android.sdk.data.account.bean.PhoneFormatCheckArgs;
import com.onyx.android.sdk.data.account.bean.QuotaSecret;
import com.onyx.android.sdk.data.account.bean.QuotaUsageDetailData;
import com.onyx.android.sdk.data.account.bean.RebindPhoneOrEmailArgs;
import com.onyx.android.sdk.data.account.bean.ResponseData;
import com.onyx.android.sdk.data.account.bean.ResultData;
import com.onyx.android.sdk.data.account.bean.ServerTimeBean;
import com.onyx.android.sdk.data.account.bean.TokenBean;
import com.onyx.android.sdk.data.account.bean.TokenCheckResult;
import com.onyx.android.sdk.data.account.bean.UnbindPhoneOrEmailArgs;
import com.onyx.android.sdk.data.account.bean.UpdateAccountInfoBean;
import com.onyx.android.sdk.data.account.bean.UserStorageBean;
import com.onyx.android.sdk.data.account.bean.WechatVerifyArgs;
import com.onyx.android.sdk.data.account.bean.WithHoldQuotasData;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.data.ResultCode;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import okhttp3.MultipartBody;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.Field;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Part;
import retrofit2.http.Path;
import retrofit2.http.Query;

@Metadata(m61527d1 = {"\u0000Ò\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u0000 \u0099\u00012\u00020\u0001:\u0002\u0099\u0001J,\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u00032\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\u0005H'J2\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00032\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u0005H'J,\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\t0\u00032\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0001\u0010\u0015\u001a\u0004\u0018\u00010\u0005H'J\u001e\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\t0\u00032\b\b\u0001\u0010\u0017\u001a\u00020\u0018H'J \u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\t0\u00032\n\b\u0001\u0010\u001a\u001a\u0004\u0018\u00010\u001bH'J8\u0010\u001c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\t0\u00032\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\u001e\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u0005H'J\u001e\u0010 \u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020!0\t0\u00032\b\b\u0001\u0010\"\u001a\u00020#H'J,\u0010$\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020%0\t0\u00032\n\b\u0001\u0010&\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010$\u001a\u0004\u0018\u00010\u0005H'J \u0010'\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t0\u00032\b\b\u0001\u0010(\u001a\u00020)H'J\u001e\u0010*\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020+0\t0\u00032\b\b\u0001\u0010(\u001a\u00020,H'J \u0010-\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t0\u00032\b\b\u0001\u0010(\u001a\u00020.H'J \u0010/\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t0\u00032\b\b\u0001\u0010(\u001a\u000200H'J\u001e\u00101\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020+0\t0\u00032\b\b\u0001\u0010(\u001a\u000202H'J,\u00103\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002040\t0\u00032\n\b\u0001\u00105\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u00106\u001a\u0004\u0018\u00010\u0005H'J8\u00107\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000109080\u00032\n\b\u0001\u0010:\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010;\u001a\u0004\u0018\u00010\u0005H'J\u0016\u0010<\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t0\u0003H'J \u0010=\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u0005080\u00032\n\b\u0001\u0010;\u001a\u0004\u0018\u00010\u0005H'J,\u0010>\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\t0\u00032\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010?\u001a\u0004\u0018\u00010\u0005H'J\u001e\u0010@\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\t0\u00032\b\b\u0001\u0010\u0017\u001a\u00020AH'J\u001e\u0010B\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\t0\u00032\b\b\u0001\u0010\u0017\u001a\u00020\u0018H'J\u001e\u0010C\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\t0\u00032\b\b\u0001\u0010\u0017\u001a\u00020DH'J>\u0010E\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020G0F0\t0\u00032\n\b\u0003\u0010H\u001a\u0004\u0018\u00010\u00052\n\b\u0003\u0010I\u001a\u0004\u0018\u00010\u00052\n\b\u0003\u0010J\u001a\u0004\u0018\u00010\u0005H'J\u0014\u0010K\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020L0\t0\u0003H'JL\u0010M\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020N0\t0\u00032\n\b\u0003\u0010H\u001a\u0004\u0018\u00010\u00052\n\b\u0003\u0010I\u001a\u0004\u0018\u00010\u00052\n\b\u0003\u0010J\u001a\u0004\u0018\u00010\u00052\b\b\u0001\u0010O\u001a\u00020\u00052\b\b\u0001\u0010P\u001a\u00020\u0005H'J\u0014\u0010Q\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020R0\t0\u0003H'J\u001a\u0010S\u001a\b\u0012\u0004\u0012\u00020T0\u00032\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0005H'J,\u0010U\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\t0\u00032\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010V\u001a\u0004\u0018\u00010WH'J,\u0010X\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020Y0\t0\u00032\n\b\u0001\u0010Z\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010[\u001a\u0004\u0018\u00010\u0005H'J\u001e\u0010\\\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020]0\t0\u00032\b\b\u0001\u0010^\u001a\u00020_H'J\u0014\u0010`\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020a0\t0\u0003H'J\u0014\u0010b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020c0\t0\u0003H'J \u0010d\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\t0\u00032\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0005H'J,\u0010e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u00032\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010?\u001a\u0004\u0018\u00010\u0005H'J\u001e\u0010f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u00032\b\b\u0001\u0010g\u001a\u00020hH'J\u001e\u0010i\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u00032\b\b\u0001\u0010g\u001a\u00020jH'J\u001e\u0010k\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u00032\b\b\u0001\u0010g\u001a\u00020lH'J\u001e\u0010m\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u00032\b\b\u0001\u0010g\u001a\u00020nH'J,\u0010o\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u00032\u0016\b\u0001\u0010p\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u000509H'J4\u0010q\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\t0\u00032\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\b\b\u0001\u0010&\u001a\u00020\u00052\b\b\u0001\u0010\u001e\u001a\u00020\u0005H'J \u0010r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\t0\u00032\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0005H'J\u0014\u0010s\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020t0\t0\u0003H'J \u0010u\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\t0\u00032\n\b\u0001\u0010\u001a\u001a\u0004\u0018\u00010vH'J \u0010w\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u00032\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0005H'J>\u0010x\u001a\b\u0012\u0004\u0012\u00020T0\u00032\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010&\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010$\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010y\u001a\u0004\u0018\u00010\u0005H'J,\u0010z\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\t0\u00032\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010{\u001a\u0004\u0018\u00010\u0005H'JD\u0010z\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020Y0\t0\u00032\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010Z\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010|\u001a\u0004\u0018\u00010\u0005H'J,\u0010}\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\n\b\u0001\u0010&\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010y\u001a\u0004\u0018\u00010\u0005H'J/\u0010~\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0019\b\u0001\u0010(\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\t\u0012\u00070\u0001¢\u0006\u0002\b\u007f09H'J\u001f\u0010\u0080\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\t0\u00032\b\b\u0001\u0010\u0017\u001a\u00020\u0018H'J.\u0010\u0081\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\t0\u00032\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u000b\b\u0001\u0010\u001a\u001a\u0005\u0018\u00010\u0082\u0001H'J#\u0010\u0083\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\t0\u00032\f\b\u0001\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0085\u0001H'J5\u0010\u0086\u0001\u001a\b\u0012\u0004\u0012\u00020T0\u00032\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010?\u001a\u0004\u0018\u00010\u00052\f\b\u0001\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0085\u0001H'J(\u0010\u0087\u0001\u001a\b\u0012\u0004\u0012\u00020T0\u00032\n\b\u0001\u0010Z\u001a\u0004\u0018\u00010\u00052\u000b\b\u0001\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u0005H'J?\u0010\u0089\u0001\u001a\b\u0012\u0004\u0012\u00020T0\u00032\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010&\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010$\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010y\u001a\u0004\u0018\u00010\u0005H'J#\u0010\u008a\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\t0\u00032\f\b\u0001\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u008c\u0001H'J\u001b\u0010\u008d\u0001\u001a\b\u0012\u0004\u0012\u00020T0\u00032\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0005H'J\u001f\u0010\u008e\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\t0\u00032\b\b\u0001\u0010\u001e\u001a\u00020\u0005H'J*\u0010\u008f\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\t0\u00032\t\b\u0001\u0010\u0090\u0001\u001a\u00020\u00052\b\b\u0001\u0010{\u001a\u00020\u0005H'J-\u0010\u0091\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\t0\u00032\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010[\u001a\u0004\u0018\u00010\u0005H'J&\u0010\u0092\u0001\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\t0\u00032\t\b\u0001\u0010\u0017\u001a\u00030\u0093\u0001H'J \u0010\u0094\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\t0\u00032\t\b\u0001\u0010\u0017\u001a\u00030\u0093\u0001H'J,\u0010\u0095\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\t0\u00032\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\t\b\u0001\u0010\u0017\u001a\u00030\u0093\u0001H'J!\u0010\u0096\u0001\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020G0\t0\u00032\n\b\u0001\u0010\u0097\u0001\u001a\u00030\u0098\u0001H'R \u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00038gX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u009a\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/CloudAccountService;", "", "booxAppUpdateInfo", "Lretrofit2/Call;", "Lcom/onyx/android/sdk/data/account/bean/ResultData;", "", "getBooxAppUpdateInfo", "()Lretrofit2/Call;", "addChild", "Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "Lcom/onyx/android/sdk/data/account/bean/TokenBean;", "token", "nickname", "bindAccount", "Lcom/onyx/android/sdk/data/account/bean/AccountProfile;", "type", Scopes.PROFILE, "bindDevice", "Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;", "device", "Lcom/onyx/android/sdk/data/account/bean/Device;", "sessionToken", "bindHuawei", "verifyArgs", "Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;", "bindPhoneOrEmail", "requestBody", "Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;", "bindWechat", "Lcom/onyx/android/sdk/data/common/data/ResultCode;", "code", "state", "checkAccountStatus", "Lcom/onyx/android/sdk/data/account/bean/CheckAccountStatusData;", "args", "Lcom/onyx/android/sdk/data/account/bean/CheckAccountStatusArgs;", "checkCode", "Lcom/onyx/android/sdk/data/account/bean/TokenCheckResult;", "phoneOrEmail", "checkEmailBindState", "body", "Lcom/onyx/android/sdk/data/account/bean/EmailBindStateCheckArgs;", "checkFormat", "Lcom/onyx/android/sdk/data/account/bean/FormatCheckResult;", "Lcom/onyx/android/sdk/data/account/bean/EmailFormatCheckArgs;", "checkIn", "Lcom/onyx/android/sdk/data/account/bean/CheckInRecord;", "checkPhoneBindState", "Lcom/onyx/android/sdk/data/account/bean/PhoneBindStateCheckArgs;", "checkPhoneFormat", "Lcom/onyx/android/sdk/data/account/bean/PhoneFormatCheckArgs;", "checkPhoneOrEmail", "Lcom/onyx/android/sdk/data/account/bean/CheckPhoneOrEmailBody;", "phone", "email", "checkQrCodeLogin", "Lcom/onyx/android/sdk/data/account/bean/ResponseData;", "", Constant.QRCODE_ID, Constant.CLIENT_TYPE, "commitHWRActivationLog", "createLoginQrCode", "deleteChild", "id", "destroyGoogle", "Lcom/onyx/android/sdk/data/account/bean/GoogleVerifyArgs;", "destroyHuawei", "destroyMicrosoft", "Lcom/onyx/android/sdk/data/account/bean/MicrosoftVerifyArgs;", "fetchQuotas", "", "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;", "category", "subCategory", Transition.f10629M0, "fetchQuotasSecret", "Lcom/onyx/android/sdk/data/account/bean/QuotaSecret;", "fetchQuotasUsageDetail", "Lcom/onyx/android/sdk/data/account/bean/QuotaUsageDetailData;", "page", "pageSize", "fetchServerTimestamp", "Lcom/onyx/android/sdk/data/account/bean/ServerTimeBean;", "fixStorageCapacity", "Lokhttp3/ResponseBody;", "forgetPassword", "forgetArgs", "Lcom/onyx/android/sdk/data/account/bean/PasswordForgetArgs;", "getDevicePushMessage", "Lcom/onyx/android/sdk/data/account/bean/DevicePushBean;", CloudStorageConstants.MAC_TAG, "action", "getUserStorageLeft", "Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;", "recalculate", "", "loadAccountPermissions", "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionData;", "loadAuthMethod", "Lcom/onyx/android/sdk/data/account/bean/ChannelAuthData;", "loadUserInfo", "logInByChild", "logInByGoogleAuth", "params", "Lcom/onyx/android/sdk/data/account/bean/GoogleAuthParams;", "logInByHuaweiAuth", "Lcom/onyx/android/sdk/data/account/bean/HuaweiAuthParams;", "logInByMicrosoftAuth", "Lcom/onyx/android/sdk/data/account/bean/MicrosoftAuthParams;", "logInByPassword", "Lcom/onyx/android/sdk/data/account/bean/LoginByPasswordParams;", "logInByPhoneOrEmail", Constant.MAP_TAG, "logOffByPhoneOrEmail", "logout", "queryHWRActivationState", "Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;", "rebindPhoneOrEmail", "Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;", "refreshToken", "removePhoneOrEmail", "areaCode", "resetPassword", "password", "sendTo", "sendPhoneOrEmailCode", "sendVerifyCode", "Lkotlin/jvm/JvmSuppressWildcards;", "unbindHuawei", "unbindPhoneOrEmail", "Lcom/onyx/android/sdk/data/account/bean/UnbindPhoneOrEmailArgs;", "updateAccountInfo", "accountInfoBean", "Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;", "updateChildAccountInfo", "updateDeviceLockState", DevicePushAction.LOCK_DEVICE, "updatePhoneOrEmail", "updateUserAvatar", "file", "Lokhttp3/MultipartBody$Part;", "userFlush", "verifyByHuawei", "verifyByPassword", C4Replicator.REPLICATOR_AUTH_USER_NAME, "wechatGetQr", "wechatQrLogin", "Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;", "wechatVerifyWithApp", "wechatVerifyWithQr", "withholdQuotas", "data", "Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;", "Companion", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface CloudAccountService {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    @NotNull
    public static final String TYPE_EMAIL = "email";

    @NotNull
    public static final String TYPE_PHONE = "phone";

    @NotNull
    public static final String VERIFY_TYPE_SENSELESS = "nvc_register_h5";

    @NotNull
    public static final String VERIFY_TYPE_SLIDE = "nc_register_h5";

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/CloudAccountService$Companion;", "", "()V", "TYPE_EMAIL", "", "TYPE_PHONE", "VERIFY_TYPE_SENSELESS", "VERIFY_TYPE_SLIDE", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @NotNull
        public static final String TYPE_EMAIL = "email";

        @NotNull
        public static final String TYPE_PHONE = "phone";

        @NotNull
        public static final String VERIFY_TYPE_SENSELESS = "nvc_register_h5";

        @NotNull
        public static final String VERIFY_TYPE_SLIDE = "nc_register_h5";

        private Companion() {
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ Call fetchQuotas$default(CloudAccountService cloudAccountService, String str, String str2, String str3, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fetchQuotas");
            }
            if ((i & 1) != 0) {
                str = null;
            }
            if ((i & 2) != 0) {
                str2 = null;
            }
            if ((i & 4) != 0) {
                str3 = null;
            }
            return cloudAccountService.fetchQuotas(str, str2, str3);
        }

        public static /* synthetic */ Call fetchQuotasUsageDetail$default(CloudAccountService cloudAccountService, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
            if (obj == null) {
                return cloudAccountService.fetchQuotasUsageDetail((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, str4, str5);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fetchQuotasUsageDetail");
        }
    }

    @FormUrlEncoded
    @POST("users/add/child")
    @NotNull
    Call<DataResponse<TokenBean>> addChild(@Header("authorization") @Nullable String token, @Field("nickname") @Nullable String nickname);

    @FormUrlEncoded
    @POST("users/ref/profile")
    @NotNull
    Call<AccountProfile> bindAccount(@Header("authorization") @Nullable String token, @Field("type") @Nullable String type, @Field("profile") @Nullable String profile);

    @POST("users/device")
    @NotNull
    Call<DataResponse<CloudOnyxAccount>> bindDevice(@Body @Nullable Device device, @Header("authorization") @Nullable String sessionToken);

    @POST("passport/huawei/bindViaCode")
    @NotNull
    Call<DataResponse<Object>> bindHuawei(@Body @NotNull HuaweiVerifyArgs verifyArgs);

    @POST("users/bindAssociatedAccount")
    @NotNull
    Call<DataResponse<Object>> bindPhoneOrEmail(@Body @Nullable BindPhoneOrEmailArgs requestBody);

    @GET("passport/wechat/bind")
    @NotNull
    Call<DataResponse<ResultCode>> bindWechat(@Header("authorization") @Nullable String token, @Nullable @Query("code") String code, @Nullable @Query("state") String state);

    @POST("users/checkStatus")
    @NotNull
    Call<DataResponse<CheckAccountStatusData>> checkAccountStatus(@Body @NotNull CheckAccountStatusArgs args);

    @FormUrlEncoded
    @POST("users/checkCode")
    @NotNull
    Call<DataResponse<TokenCheckResult>> checkCode(@Field("mobi") @Nullable String phoneOrEmail, @Field("code") @Nullable String checkCode);

    @POST("validation/checkMailAddressBoundStatus")
    @NotNull
    Call<DataResponse<Object>> checkEmailBindState(@Body @NotNull EmailBindStateCheckArgs body);

    @POST("validation/checkMailAddressFormat")
    @NotNull
    Call<DataResponse<FormatCheckResult>> checkFormat(@Body @NotNull EmailFormatCheckArgs body);

    @POST("checkIn")
    @NotNull
    Call<DataResponse<Object>> checkIn(@Body @NotNull CheckInRecord body);

    @POST("validation/checkPhoneNumberBoundStatus")
    @NotNull
    Call<DataResponse<Object>> checkPhoneBindState(@Body @NotNull PhoneBindStateCheckArgs body);

    @POST("validation/checkPhoneNumberFormat")
    @NotNull
    Call<DataResponse<FormatCheckResult>> checkPhoneFormat(@Body @NotNull PhoneFormatCheckArgs body);

    @GET("users/checkPhoneOrEmail")
    @NotNull
    Call<DataResponse<CheckPhoneOrEmailBody>> checkPhoneOrEmail(@Nullable @Query("phone") String phone, @Nullable @Query("email") String email);

    @GET("auth/qrcode/check")
    @NotNull
    Call<ResponseData<Map<String, Object>>> checkQrCodeLogin(@Nullable @Query("qrcodeId") String qrcodeId, @Nullable @Query("clientType") String clientType);

    @POST("engine/neatHandwriting/activeLog")
    @NotNull
    Call<DataResponse<Object>> commitHWRActivationLog();

    @FormUrlEncoded
    @POST("auth/qrcode/create")
    @NotNull
    Call<ResponseData<String>> createLoginQrCode(@Field("clientType") @Nullable String clientType);

    @FormUrlEncoded
    @POST("users/del/child")
    @NotNull
    Call<DataResponse<String>> deleteChild(@Header("authorization") @Nullable String token, @Field("childrenId") @Nullable String id);

    @POST("passport/google/destroyViaToken")
    @NotNull
    Call<DataResponse<Object>> destroyGoogle(@Body @NotNull GoogleVerifyArgs verifyArgs);

    @POST("passport/huawei/destroyViaCode")
    @NotNull
    Call<DataResponse<Object>> destroyHuawei(@Body @NotNull HuaweiVerifyArgs verifyArgs);

    @POST("passport/microsoft/destroyViaToken")
    @NotNull
    Call<DataResponse<Object>> destroyMicrosoft(@Body @NotNull MicrosoftVerifyArgs verifyArgs);

    @GET("app/quotas")
    @NotNull
    Call<DataResponse<List<AccountQuotaItemData>>> fetchQuotas(@Nullable @Query("category") String category, @Nullable @Query("subCategory") String subCategory, @Nullable @Query("itemId") String itemId);

    @GET("app/quotas/secret")
    @NotNull
    Call<DataResponse<QuotaSecret>> fetchQuotasSecret();

    @GET("app/quotas/usageDetails")
    @NotNull
    Call<DataResponse<QuotaUsageDetailData>> fetchQuotasUsageDetail(@Nullable @Query("category") String category, @Nullable @Query("subCategory") String subCategory, @Nullable @Query("itemId") String itemId, @NotNull @Query("page") String page, @NotNull @Query("pageSize") String pageSize);

    @GET("app/common/serverTime")
    @NotNull
    Call<DataResponse<ServerTimeBean>> fetchServerTimestamp();

    @GET("users/v2/me/calibration/size")
    @NotNull
    Call<ResponseBody> fixStorageCapacity(@Header("authorization") @Nullable String token);

    @POST("users/forget")
    @NotNull
    Call<DataResponse<Object>> forgetPassword(@Header("authorization") @Nullable String token, @Body @Nullable PasswordForgetArgs forgetArgs);

    @GET("appVersions/android/version")
    @NotNull
    Call<ResultData<String>> getBooxAppUpdateInfo();

    @FormUrlEncoded
    @POST("devices/action/state")
    @NotNull
    Call<DataResponse<DevicePushBean>> getDevicePushMessage(@Field("mac") @Nullable String mac, @Field("action") @Nullable String action);

    @GET("statistics/user/left")
    @NotNull
    Call<DataResponse<UserStorageBean>> getUserStorageLeft(@Query("recalculate") boolean recalculate);

    @GET("users/permissions")
    @NotNull
    Call<DataResponse<AccountPermissionData>> loadAccountPermissions();

    @GET("users/authMethod")
    @NotNull
    Call<DataResponse<ChannelAuthData>> loadAuthMethod();

    @GET("app/users/me")
    @NotNull
    Call<DataResponse<CloudOnyxAccount>> loadUserInfo(@Header("authorization") @Nullable String token);

    @FormUrlEncoded
    @POST("users/child/login")
    @NotNull
    Call<DataResponse<TokenBean>> logInByChild(@Header("authorization") @Nullable String token, @Field("childrenId") @Nullable String id);

    @POST("passport/google/loginViaToken")
    @NotNull
    Call<DataResponse<TokenBean>> logInByGoogleAuth(@Body @NotNull GoogleAuthParams params);

    @POST("passport/huawei/loginViaCode")
    @NotNull
    Call<DataResponse<TokenBean>> logInByHuaweiAuth(@Body @NotNull HuaweiAuthParams params);

    @POST("passport/microsoft/loginViaToken")
    @NotNull
    Call<DataResponse<TokenBean>> logInByMicrosoftAuth(@Body @NotNull MicrosoftAuthParams params);

    @POST("users/login")
    @NotNull
    Call<DataResponse<TokenBean>> logInByPassword(@Body @NotNull LoginByPasswordParams params);

    @FormUrlEncoded
    @POST("app/users/fastAuth")
    @NotNull
    Call<DataResponse<TokenBean>> logInByPhoneOrEmail(@FieldMap @NotNull Map<String, String> map);

    @FormUrlEncoded
    @POST("users/destroy/account")
    @NotNull
    Call<DataResponse<Object>> logOffByPhoneOrEmail(@Header("authorization") @Nullable String token, @Field("mobi") @NotNull String phoneOrEmail, @Field("code") @NotNull String code);

    @POST("devices/logout")
    @NotNull
    Call<DataResponse<Object>> logout(@Header("authorization") @Nullable String token);

    @GET("engine/neatHandwriting/activeState")
    @NotNull
    Call<DataResponse<HWRActivationState>> queryHWRActivationState();

    @POST("users/rebindAssociatedAccount")
    @NotNull
    Call<DataResponse<Object>> rebindPhoneOrEmail(@Body @Nullable RebindPhoneOrEmailArgs requestBody);

    @GET("token/refresh")
    @NotNull
    Call<DataResponse<TokenBean>> refreshToken(@Header("authorization") @Nullable String token);

    @FormUrlEncoded
    @POST("users/removePhoneOrEmail")
    @NotNull
    Call<ResponseBody> removePhoneOrEmail(@Header("authorization") @Nullable String token, @Field("mobi") @Nullable String phoneOrEmail, @Field("code") @Nullable String checkCode, @Field("area_code") @Nullable String areaCode);

    @FormUrlEncoded
    @POST("users/reset")
    @NotNull
    Call<DataResponse<CloudOnyxAccount>> resetPassword(@Header("authorization") @Nullable String token, @Field("password") @Nullable String password);

    @GET("devices/reset/password")
    @NotNull
    Call<DataResponse<DevicePushBean>> resetPassword(@Header("authorization") @Nullable String token, @Nullable @Query("mac") String mac, @Nullable @Query("type") String type, @Nullable @Query("sendTo") String sendTo);

    @FormUrlEncoded
    @POST("users/sendVerifyCode")
    @NotNull
    Call<ResultData<String>> sendPhoneOrEmailCode(@Field("mobi") @Nullable String phoneOrEmail, @Field("area_code") @Nullable String areaCode);

    @POST("app/users/sendVerifyCode")
    @NotNull
    Call<ResultData<String>> sendVerifyCode(@Body @NotNull Map<String, Object> body);

    @POST("passport/huawei/unbindViaCode")
    @NotNull
    Call<DataResponse<Object>> unbindHuawei(@Body @NotNull HuaweiVerifyArgs verifyArgs);

    @POST("users/unbindAssociatedAccount")
    @NotNull
    Call<DataResponse<Object>> unbindPhoneOrEmail(@Header("authorization") @Nullable String token, @Body @Nullable UnbindPhoneOrEmailArgs requestBody);

    @PUT("users/updateInfo")
    @NotNull
    Call<DataResponse<CloudOnyxAccount>> updateAccountInfo(@Body @Nullable UpdateAccountInfoBean accountInfoBean);

    @PUT("users/child/{id}/info")
    @NotNull
    Call<ResponseBody> updateChildAccountInfo(@Header("authorization") @Nullable String token, @Path("id") @Nullable String id, @Body @Nullable UpdateAccountInfoBean accountInfoBean);

    @FormUrlEncoded
    @PUT("devices/lock/state")
    @NotNull
    Call<ResponseBody> updateDeviceLockState(@Field("mac") @Nullable String mac, @Field("lock") @Nullable String lock);

    @FormUrlEncoded
    @POST("users/updatePhoneOrEmail")
    @NotNull
    Call<ResponseBody> updatePhoneOrEmail(@Header("authorization") @Nullable String token, @Field("mobi") @Nullable String phoneOrEmail, @Field("code") @Nullable String checkCode, @Field("area_code") @Nullable String areaCode);

    @POST("users/avatar")
    @NotNull
    @Multipart
    Call<DataResponse<CloudOnyxAccount>> updateUserAvatar(@Nullable @Part MultipartBody.Part file);

    @GET("cloud/docs/test/userFlush")
    @NotNull
    Call<ResponseBody> userFlush(@Header("authorization") @Nullable String token);

    @FormUrlEncoded
    @POST("passport/huawei/verifyViaCode")
    @NotNull
    Call<DataResponse<Object>> verifyByHuawei(@Field("code") @NotNull String code);

    @FormUrlEncoded
    @POST("users/verifyViaPassword")
    @NotNull
    Call<DataResponse<Object>> verifyByPassword(@Field("user") @NotNull String username, @Field("pass") @NotNull String password);

    @GET("passport/wechat/qrcode")
    @NotNull
    Call<DataResponse<Object>> wechatGetQr(@Header("authorization") @Nullable String token, @Nullable @Query("action") String action);

    @POST("passport/wechat/verifyWithCode")
    @NotNull
    Call<DataResponse<DataResponse<TokenBean>>> wechatQrLogin(@Body @NotNull WechatVerifyArgs verifyArgs);

    @POST("passport/wechat/verifyWithApp")
    @NotNull
    Call<DataResponse<Object>> wechatVerifyWithApp(@Body @NotNull WechatVerifyArgs verifyArgs);

    @POST("passport/wechat/verifyWithCode")
    @NotNull
    Call<DataResponse<Object>> wechatVerifyWithQr(@Header("authorization") @Nullable String token, @Body @NotNull WechatVerifyArgs verifyArgs);

    @POST("app/quotas")
    @NotNull
    Call<DataResponse<AccountQuotaItemData>> withholdQuotas(@Body @NotNull WithHoldQuotasData data);
}
