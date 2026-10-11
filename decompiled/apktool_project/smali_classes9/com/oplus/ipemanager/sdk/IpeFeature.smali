.class public final enum Lcom/oplus/ipemanager/sdk/IpeFeature;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ipemanager/sdk/IpeFeature$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/ipemanager/sdk/IpeFeature;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000fB\u000f\u0008\u0012\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0008H\u0016j\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/oplus/ipemanager/sdk/IpeFeature;",
        "",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Ljava/lang/String;ILandroid/os/Parcel;)V",
        "(Ljava/lang/String;I)V",
        "describeContents",
        "",
        "writeToParcel",
        "",
        "flags",
        "DEMO_MODE",
        "FUNCTION_VIBRATION",
        "FEEDBACK_VIBRATION",
        "CREATOR",
        "com.oplus.ocs.ipe_sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/ipemanager/sdk/IpeFeature;

.field public static final CREATOR:Lcom/oplus/ipemanager/sdk/IpeFeature$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum DEMO_MODE:Lcom/oplus/ipemanager/sdk/IpeFeature;

.field public static final enum FEEDBACK_VIBRATION:Lcom/oplus/ipemanager/sdk/IpeFeature;

.field public static final enum FUNCTION_VIBRATION:Lcom/oplus/ipemanager/sdk/IpeFeature;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/ipemanager/sdk/IpeFeature;
    .locals 3

    sget-object v0, Lcom/oplus/ipemanager/sdk/IpeFeature;->DEMO_MODE:Lcom/oplus/ipemanager/sdk/IpeFeature;

    sget-object v1, Lcom/oplus/ipemanager/sdk/IpeFeature;->FUNCTION_VIBRATION:Lcom/oplus/ipemanager/sdk/IpeFeature;

    sget-object v2, Lcom/oplus/ipemanager/sdk/IpeFeature;->FEEDBACK_VIBRATION:Lcom/oplus/ipemanager/sdk/IpeFeature;

    filled-new-array {v0, v1, v2}, [Lcom/oplus/ipemanager/sdk/IpeFeature;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/oplus/ipemanager/sdk/IpeFeature;

    const-string v1, "DEMO_MODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/ipemanager/sdk/IpeFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/ipemanager/sdk/IpeFeature;->DEMO_MODE:Lcom/oplus/ipemanager/sdk/IpeFeature;

    new-instance v0, Lcom/oplus/ipemanager/sdk/IpeFeature;

    const-string v1, "FUNCTION_VIBRATION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oplus/ipemanager/sdk/IpeFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/ipemanager/sdk/IpeFeature;->FUNCTION_VIBRATION:Lcom/oplus/ipemanager/sdk/IpeFeature;

    new-instance v0, Lcom/oplus/ipemanager/sdk/IpeFeature;

    const-string v1, "FEEDBACK_VIBRATION"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lcom/oplus/ipemanager/sdk/IpeFeature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/ipemanager/sdk/IpeFeature;->FEEDBACK_VIBRATION:Lcom/oplus/ipemanager/sdk/IpeFeature;

    invoke-static {}, Lcom/oplus/ipemanager/sdk/IpeFeature;->$values()[Lcom/oplus/ipemanager/sdk/IpeFeature;

    move-result-object v0

    sput-object v0, Lcom/oplus/ipemanager/sdk/IpeFeature;->$VALUES:[Lcom/oplus/ipemanager/sdk/IpeFeature;

    new-instance v0, Lcom/oplus/ipemanager/sdk/IpeFeature$a;

    invoke-direct {v0, v2}, Lcom/oplus/ipemanager/sdk/IpeFeature$a;-><init>(B)V

    sput-object v0, Lcom/oplus/ipemanager/sdk/IpeFeature;->CREATOR:Lcom/oplus/ipemanager/sdk/IpeFeature$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/os/Parcel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/oplus/ipemanager/sdk/IpeFeature;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/ipemanager/sdk/IpeFeature;
    .locals 1

    const-class v0, Lcom/oplus/ipemanager/sdk/IpeFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/ipemanager/sdk/IpeFeature;

    return-object p0
.end method

.method public static values()[Lcom/oplus/ipemanager/sdk/IpeFeature;
    .locals 1

    sget-object v0, Lcom/oplus/ipemanager/sdk/IpeFeature;->$VALUES:[Lcom/oplus/ipemanager/sdk/IpeFeature;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/ipemanager/sdk/IpeFeature;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
