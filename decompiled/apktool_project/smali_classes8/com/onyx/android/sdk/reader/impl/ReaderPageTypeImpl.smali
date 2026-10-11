.class public final Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/reader/api/ReaderPageType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0011\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0005H\u0016R\"\u0010\u000f\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl;",
        "Lcom/onyx/android/sdk/reader/api/ReaderPageType;",
        "",
        "addTextPageFlag",
        "addOnyxPageFlag",
        "",
        "isTextPage",
        "isOnyxPage",
        "",
        "a",
        "I",
        "getPageType",
        "()I",
        "setPageType",
        "(I)V",
        "pageType",
        "<init>",
        "Companion",
        "sdk-readercore_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAGE_TYPE_ONYX_PAGE:I = 0x2

.field public static final PAGE_TYPE_TEXT_PAGE:I = 0x1

.field public static final PAGE_TYPE_UNKNOWN:I

.field public static final b:Lcom/onyx/android/sdk/reader/api/ReaderPageType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl$Companion;

    new-instance v0, Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl;->b:Lcom/onyx/android/sdk/reader/api/ReaderPageType;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl;->a:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$getDummy$cp()Lcom/onyx/android/sdk/reader/api/ReaderPageType;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl;->b:Lcom/onyx/android/sdk/reader/api/ReaderPageType;

    return-object v0
.end method


# virtual methods
.method public final addOnyxPageFlag()V
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl;->a:I

    return-void
.end method

.method public final addTextPageFlag()V
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl;->a:I

    return-void
.end method

.method public final getPageType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl;->a:I

    return p0
.end method

.method public isOnyxPage()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl;->a:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTextPage()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl;->a:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setPageType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderPageTypeImpl;->a:I

    return-void
.end method
