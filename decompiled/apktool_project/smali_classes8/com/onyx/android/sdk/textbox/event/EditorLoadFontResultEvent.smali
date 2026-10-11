.class public final Lcom/onyx/android/sdk/textbox/event/EditorLoadFontResultEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/textbox/event/EditorLoadFontResultEvent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/event/EditorLoadFontResultEvent;",
        "",
        "",
        "a",
        "I",
        "getCode",
        "()I",
        "code",
        "<init>",
        "(I)V",
        "Companion",
        "sdk-textbox_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/textbox/event/EditorLoadFontResultEvent$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NETWORK_ERROR:I = 0x2

.field public static final SUCCESS:I = 0x0

.field public static final SYNTAX_ERROR:I = 0x1


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/textbox/event/EditorLoadFontResultEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/textbox/event/EditorLoadFontResultEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/textbox/event/EditorLoadFontResultEvent;->Companion:Lcom/onyx/android/sdk/textbox/event/EditorLoadFontResultEvent$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/onyx/android/sdk/textbox/event/EditorLoadFontResultEvent;->a:I

    return-void
.end method


# virtual methods
.method public final getCode()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/event/EditorLoadFontResultEvent;->a:I

    return p0
.end method
