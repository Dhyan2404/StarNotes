package com.onyx.galaxy.note.usercenter.adapter;

import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.data.account.bean.AccountVerifyMethods;
import com.onyx.galaxy.note.usercenter.p049ui.AccountVerifyEmailFragment;
import com.onyx.galaxy.note.usercenter.p049ui.AccountVerifyHuaweiFragment;
import com.onyx.galaxy.note.usercenter.p049ui.AccountVerifyPasswordFragment;
import com.onyx.galaxy.note.usercenter.p049ui.AccountVerifyPhoneFragment;
import com.onyx.galaxy.note.usercenter.p049ui.AccountVerifyWechatFragment;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0002H\u0016R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/adapter/AccountVerifyFragmentAdapter;", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "", "position", "Landroidx/fragment/app/Fragment;", "createFragment", "getItemCount", "", "", C4921e.f26528e, "Ljava/util/List;", "fragmentTags", "fragment", Constants.CONSTRUCTOR_NAME, "(Landroidx/fragment/app/Fragment;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class AccountVerifyFragmentAdapter extends FragmentStateAdapter {

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final List<String> fragmentTags;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountVerifyFragmentAdapter(@NotNull Fragment fragment, @NotNull List<String> fragmentTags) {
        super(fragment);
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(fragmentTags, "fragmentTags");
        this.fragmentTags = fragmentTags;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x000c. Please report as an issue. */
    @Override // androidx.viewpager2.adapter.FragmentStateAdapter
    @NotNull
    public Fragment createFragment(int position) {
        String str = this.fragmentTags.get(position);
        switch (str.hashCode()) {
            case -2122609145:
                if (str.equals(AccountVerifyMethods.HUAWEI)) {
                    return new AccountVerifyHuaweiFragment();
                }
                return new Fragment();
            case -1707903162:
                if (str.equals(AccountVerifyMethods.WECHAT)) {
                    return new AccountVerifyWechatFragment();
                }
                return new Fragment();
            case 67066748:
                if (str.equals(AccountVerifyMethods.EMAIL)) {
                    return new AccountVerifyEmailFragment();
                }
                return new Fragment();
            case 77090126:
                if (str.equals(AccountVerifyMethods.PHONE)) {
                    return new AccountVerifyPhoneFragment();
                }
                return new Fragment();
            case 1281629883:
                if (str.equals(AccountVerifyMethods.PASSWORD)) {
                    return new AccountVerifyPasswordFragment();
                }
                return new Fragment();
            default:
                return new Fragment();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.fragmentTags.size();
    }
}
