.class public final Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/reader/api/ReaderSelection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008@\u0018\u0000 O2\u00020\u0001:\u0001OB\u0007\u00a2\u0006\u0004\u0008M\u0010NJ\u0008\u0010\u0002\u001a\u00020\u0000H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0005H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u0010\n\u001a\u00020\u0008H\u0016J\u0008\u0010\u000b\u001a\u00020\u0008H\u0016J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0016J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016J\u0008\u0010\u0012\u001a\u00020\u0003H\u0016R\"\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\"\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u001a\u001a\u0004\u0008 \u0010\u001c\"\u0004\u0008!\u0010\u001eR\"\u0010\t\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\"\u0010\n\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010#\u001a\u0004\u0008)\u0010%\"\u0004\u0008*\u0010\'R\"\u0010\u000b\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010#\u001a\u0004\u0008,\u0010%\"\u0004\u0008-\u0010\'R\"\u00101\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010#\u001a\u0004\u0008/\u0010%\"\u0004\u00080\u0010\'R\"\u00105\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u0010#\u001a\u0004\u00083\u0010%\"\u0004\u00084\u0010\'R\"\u00109\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u0010#\u001a\u0004\u00087\u0010%\"\u0004\u00088\u0010\'R(\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R(\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008A\u0010;\u001a\u0004\u0008B\u0010=\"\u0004\u0008C\u0010?R\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008D\u0010E\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR\"\u0010\u0012\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008J\u0010\u0014\u001a\u0004\u0008K\u0010\u0016\"\u0004\u0008L\u0010\u0018\u00a8\u0006P"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;",
        "Lcom/onyx/android/sdk/reader/api/ReaderSelection;",
        "copy",
        "",
        "pageIndex",
        "Lcom/onyx/android/sdk/reader/api/PageRange;",
        "pageRange",
        "selectionRange",
        "",
        "text",
        "leftText",
        "rightText",
        "",
        "Landroid/graphics/RectF;",
        "rectangles",
        "charRectList",
        "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;",
        "writingMode",
        "linkType",
        "a",
        "I",
        "getPageIndex",
        "()I",
        "setPageIndex",
        "(I)V",
        "b",
        "Lcom/onyx/android/sdk/reader/api/PageRange;",
        "getPageRange",
        "()Lcom/onyx/android/sdk/reader/api/PageRange;",
        "setPageRange",
        "(Lcom/onyx/android/sdk/reader/api/PageRange;)V",
        "c",
        "getSelectionRange",
        "setSelectionRange",
        "d",
        "Ljava/lang/String;",
        "getText",
        "()Ljava/lang/String;",
        "setText",
        "(Ljava/lang/String;)V",
        "e",
        "getLeftText",
        "setLeftText",
        "f",
        "getRightText",
        "setRightText",
        "g",
        "getOriginText",
        "setOriginText",
        "originText",
        "h",
        "getOriginLeftText",
        "setOriginLeftText",
        "originLeftText",
        "i",
        "getOriginRightText",
        "setOriginRightText",
        "originRightText",
        "j",
        "Ljava/util/List;",
        "getRectList",
        "()Ljava/util/List;",
        "setRectList",
        "(Ljava/util/List;)V",
        "rectList",
        "k",
        "getCharRectList",
        "setCharRectList",
        "l",
        "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;",
        "getWritingMode",
        "()Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;",
        "setWritingMode",
        "(Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)V",
        "m",
        "getLinkType",
        "setLinkType",
        "<init>",
        "()V",
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
.field public static final Companion:Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Lcom/onyx/android/sdk/reader/api/PageRange;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/reader/api/PageRange;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/reader/api/PageRange;->Companion:Lcom/onyx/android/sdk/reader/api/PageRange$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/PageRange$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->b:Lcom/onyx/android/sdk/reader/api/PageRange;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/api/PageRange$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->c:Lcom/onyx/android/sdk/reader/api/PageRange;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->i:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->k:Ljava/util/List;

    sget-object v0, Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;->HORIZONTAL:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->l:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    return-void
.end method


# virtual methods
.method public charRectList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->k:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic copy()Lcom/onyx/android/sdk/reader/api/ReaderSelection;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->copy()Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;

    invoke-direct {v0}, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;-><init>()V

    .line 3
    iget v1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->a:I

    iput v1, v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->a:I

    .line 4
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->b:Lcom/onyx/android/sdk/reader/api/PageRange;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/api/PageRange;->copy()Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->b:Lcom/onyx/android/sdk/reader/api/PageRange;

    .line 5
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->c:Lcom/onyx/android/sdk/reader/api/PageRange;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/api/PageRange;->copy()Lcom/onyx/android/sdk/reader/api/PageRange;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->c:Lcom/onyx/android/sdk/reader/api/PageRange;

    .line 6
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->d:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->e:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->f:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->g:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->h:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->i:Ljava/lang/String;

    .line 12
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->j:Ljava/util/List;

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copyRectFList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->j:Ljava/util/List;

    .line 13
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->k:Ljava/util/List;

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copyRectFList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->k:Ljava/util/List;

    .line 14
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->l:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    iput-object v1, v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->l:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    .line 15
    iget p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->m:I

    iput p0, v0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->m:I

    return-object v0
.end method

.method public final getCharRectList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->k:Ljava/util/List;

    return-object p0
.end method

.method public final getLeftText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getLinkType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->m:I

    return p0
.end method

.method public final getOriginLeftText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final getOriginRightText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final getOriginText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final getPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->a:I

    return p0
.end method

.method public final getPageRange()Lcom/onyx/android/sdk/reader/api/PageRange;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->b:Lcom/onyx/android/sdk/reader/api/PageRange;

    return-object p0
.end method

.method public final getRectList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->j:Ljava/util/List;

    return-object p0
.end method

.method public final getRightText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getSelectionRange()Lcom/onyx/android/sdk/reader/api/PageRange;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->c:Lcom/onyx/android/sdk/reader/api/PageRange;

    return-object p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getWritingMode()Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->l:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    return-object p0
.end method

.method public leftText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->e:Ljava/lang/String;

    return-object p0
.end method

.method public linkType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->m:I

    return p0
.end method

.method public originText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/api/ReaderSelection$DefaultImpls;->originText(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public pageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->a:I

    return p0
.end method

.method public pageRange()Lcom/onyx/android/sdk/reader/api/PageRange;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->b:Lcom/onyx/android/sdk/reader/api/PageRange;

    return-object p0
.end method

.method public rectangles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->j:Ljava/util/List;

    return-object p0
.end method

.method public rightText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->f:Ljava/lang/String;

    return-object p0
.end method

.method public selectionRange()Lcom/onyx/android/sdk/reader/api/PageRange;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->c:Lcom/onyx/android/sdk/reader/api/PageRange;

    return-object p0
.end method

.method public final setCharRectList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->k:Ljava/util/List;

    return-void
.end method

.method public final setLeftText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->e:Ljava/lang/String;

    return-void
.end method

.method public final setLinkType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->m:I

    return-void
.end method

.method public final setOriginLeftText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->h:Ljava/lang/String;

    return-void
.end method

.method public final setOriginRightText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->i:Ljava/lang/String;

    return-void
.end method

.method public final setOriginText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->g:Ljava/lang/String;

    return-void
.end method

.method public final setPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->a:I

    return-void
.end method

.method public final setPageRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/PageRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->b:Lcom/onyx/android/sdk/reader/api/PageRange;

    return-void
.end method

.method public final setRectList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->j:Ljava/util/List;

    return-void
.end method

.method public final setRightText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->f:Ljava/lang/String;

    return-void
.end method

.method public final setSelectionRange(Lcom/onyx/android/sdk/reader/api/PageRange;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/PageRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->c:Lcom/onyx/android/sdk/reader/api/PageRange;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->d:Ljava/lang/String;

    return-void
.end method

.method public final setWritingMode(Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->l:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    return-void
.end method

.method public text()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->d:Ljava/lang/String;

    return-object p0
.end method

.method public writingMode()Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/impl/ReaderSelectionImpl;->l:Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;

    return-object p0
.end method
