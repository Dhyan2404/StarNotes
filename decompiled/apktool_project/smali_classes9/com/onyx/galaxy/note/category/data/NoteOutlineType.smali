.class public final enum Lcom/onyx/galaxy/note/category/data/NoteOutlineType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/galaxy/note/category/data/NoteOutlineType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/data/NoteOutlineType;",
        "",
        "titleResId",
        "",
        "iconResId",
        "(Ljava/lang/String;III)V",
        "getIconResId",
        "()I",
        "getTitleResId",
        "DocOverview",
        "TOC",
        "PageBookmark",
        "Excerpt",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

.field public static final enum DocOverview:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

.field public static final enum Excerpt:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

.field public static final enum PageBookmark:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

.field public static final enum TOC:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;


# instance fields
.field private final iconResId:I

.field private final titleResId:I


# direct methods
.method private static final synthetic $values()[Lcom/onyx/galaxy/note/category/data/NoteOutlineType;
    .locals 4

    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->DocOverview:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->TOC:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    sget-object v2, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->PageBookmark:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    sget-object v3, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->Excerpt:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    sget v1, Lcom/onyx/galaxy/note/R$string;->document_overview:I

    sget v2, Lcom/onyx/galaxy/note/R$drawable;->ic_doc_overview:I

    const-string v3, "DocOverview"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->DocOverview:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    new-instance v0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    sget v1, Lcom/onyx/galaxy/note/R$string;->toc:I

    sget v2, Lcom/onyx/galaxy/note/R$drawable;->ic_toc:I

    const-string v3, "TOC"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->TOC:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    new-instance v0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    sget v1, Lcom/onyx/galaxy/note/R$string;->page_bookmark:I

    sget v2, Lcom/onyx/galaxy/note/R$drawable;->ic_bookmark:I

    const-string v3, "PageBookmark"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->PageBookmark:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    new-instance v0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    sget v1, Lcom/onyx/galaxy/note/R$string;->excerpt:I

    sget v2, Lcom/onyx/galaxy/note/R$drawable;->ic_excerpt:I

    const-string v3, "Excerpt"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->Excerpt:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    invoke-static {}, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->$values()[Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->$VALUES:[Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->titleResId:I

    iput p4, p0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->iconResId:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/galaxy/note/category/data/NoteOutlineType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/galaxy/note/category/data/NoteOutlineType;
    .locals 1

    const-class v0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    return-object p0
.end method

.method public static values()[Lcom/onyx/galaxy/note/category/data/NoteOutlineType;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->$VALUES:[Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    return-object v0
.end method


# virtual methods
.method public final getIconResId()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->iconResId:I

    return p0
.end method

.method public final getTitleResId()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->titleResId:I

    return p0
.end method
