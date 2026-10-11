.class final Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout$initView$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "progress",
        "",
        "<anonymous parameter 1>",
        "<anonymous parameter 2>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout$initView$3$1;->this$0:Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout$initView$3$1;->invoke(FFZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(FFZ)V
    .locals 0

    .line 2
    sget-object p2, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;

    invoke-virtual {p2, p1}, Lcom/onyx/galaxy/note/settings/utils/EyesComfortManager;->setIntensity(F)V

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p3, Lcom/onyx/galaxy/note/R$string;->unit_percent:I

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout$initView$3$1;->this$0:Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;->access$getBinding(Lcom/onyx/galaxy/note/ui/view/EyesComfortSettingLayout;)Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutEyesComfortSettingsBinding;->tvIntensity:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
