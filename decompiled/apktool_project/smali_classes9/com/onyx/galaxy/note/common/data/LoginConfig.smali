.class public final Lcom/onyx/galaxy/note/common/data/LoginConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/common/data/LoginConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/data/LoginConfig;",
        "",
        "loginPrimaryType",
        "",
        "timeout",
        "",
        "hasPhoneLaw",
        "",
        "(Ljava/lang/String;JZ)V",
        "getHasPhoneLaw",
        "()Z",
        "getLoginPrimaryType",
        "()Ljava/lang/String;",
        "getTimeout",
        "()J",
        "Companion",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final COUNT_DOWN_TIME_SECOND_LONG:J = 0x78L

.field public static final COUNT_DOWN_TIME_SECOND_SHORT:J = 0x3cL

.field public static final Companion:Lcom/onyx/galaxy/note/common/data/LoginConfig$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOGIN_PRIMARY_TYPE_EMAIL:Ljava/lang/String; = "email"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOGIN_PRIMARY_TYPE_PHONE:Ljava/lang/String; = "phone"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final hasPhoneLaw:Z

.field private final loginPrimaryType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final timeout:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/common/data/LoginConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/common/data/LoginConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/common/data/LoginConfig;->Companion:Lcom/onyx/galaxy/note/common/data/LoginConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/onyx/galaxy/note/common/data/LoginConfig;-><init>(Ljava/lang/String;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "loginPrimaryType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/common/data/LoginConfig;->loginPrimaryType:Ljava/lang/String;

    .line 4
    iput-wide p2, p0, Lcom/onyx/galaxy/note/common/data/LoginConfig;->timeout:J

    .line 5
    iput-boolean p4, p0, Lcom/onyx/galaxy/note/common/data/LoginConfig;->hasPhoneLaw:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-string p1, "email"

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const-wide/16 p2, 0x78

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/common/data/LoginConfig;-><init>(Ljava/lang/String;JZ)V

    return-void
.end method


# virtual methods
.method public final getHasPhoneLaw()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/common/data/LoginConfig;->hasPhoneLaw:Z

    return p0
.end method

.method public final getLoginPrimaryType()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/data/LoginConfig;->loginPrimaryType:Ljava/lang/String;

    return-object p0
.end method

.method public final getTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/galaxy/note/common/data/LoginConfig;->timeout:J

    return-wide v0
.end method
