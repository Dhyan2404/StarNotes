.class public final Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0012\u0008\u0086\u0008\u0018\u0000 \"2\u00020\u0001:\u0001\"B\'\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008 \u0010!J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J2\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\u000e\u001a\u00020\rH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0002H\u00d6\u0001J\u0013\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\u0008\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u0019\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR$\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u0007\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;",
        "",
        "",
        "component1",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
        "component2",
        "component3",
        "()Ljava/lang/Integer;",
        "itemType",
        "shortcutType",
        "titleRes",
        "copy",
        "(ILcom/onyx/galaxy/note/editor/data/ShortcutType;Ljava/lang/Integer;)Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;",
        "",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "a",
        "I",
        "getItemType",
        "()I",
        "b",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
        "getShortcutType",
        "()Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
        "c",
        "Ljava/lang/Integer;",
        "getTitleRes",
        "setTitleRes",
        "(Ljava/lang/Integer;)V",
        "<init>",
        "(ILcom/onyx/galaxy/note/editor/data/ShortcutType;Ljava/lang/Integer;)V",
        "Companion",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ITEM_TYPE_SECTION_SHORTCUT:I = 0x2

.field public static final ITEM_TYPE_SECTION_TITLE:I = 0x1

.field public static final d:Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Lcom/onyx/galaxy/note/editor/data/ShortcutType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->Companion:Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean$Companion;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget v1, Lcom/onyx/galaxy/note/R$string;->custom_shortcut_bar_left_side_title:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;-><init>(ILcom/onyx/galaxy/note/editor/data/ShortcutType;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->d:Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    const/4 v9, 0x1

    const/4 v10, 0x0

    sget v1, Lcom/onyx/galaxy/note/R$string;->custom_shortcut_bar_right_side_title:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;-><init>(ILcom/onyx/galaxy/note/editor/data/ShortcutType;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->e:Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    return-void
.end method

.method public constructor <init>(ILcom/onyx/galaxy/note/editor/data/ShortcutType;Ljava/lang/Integer;)V
    .locals 0
    .param p2    # Lcom/onyx/galaxy/note/editor/data/ShortcutType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->a:I

    .line 3
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->b:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    .line 4
    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->c:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/onyx/galaxy/note/editor/data/ShortcutType;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;-><init>(ILcom/onyx/galaxy/note/editor/data/ShortcutType;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic access$getSECTION_TITLE_LEFT$cp()Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->d:Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    return-object v0
.end method

.method public static final synthetic access$getSECTION_TITLE_RIGHT$cp()Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->e:Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;ILcom/onyx/galaxy/note/editor/data/ShortcutType;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->a:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->b:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->c:Ljava/lang/Integer;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->copy(ILcom/onyx/galaxy/note/editor/data/ShortcutType;Ljava/lang/Integer;)Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->a:I

    return p0
.end method

.method public final component2()Lcom/onyx/galaxy/note/editor/data/ShortcutType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->b:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    return-object p0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public final copy(ILcom/onyx/galaxy/note/editor/data/ShortcutType;Ljava/lang/Integer;)Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;
    .locals 0
    .param p2    # Lcom/onyx/galaxy/note/editor/data/ShortcutType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;-><init>(ILcom/onyx/galaxy/note/editor/data/ShortcutType;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->a:I

    iget v3, p1, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->b:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    iget-object v3, p1, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->b:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->c:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->c:Ljava/lang/Integer;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getItemType()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->a:I

    return p0
.end method

.method public final getShortcutType()Lcom/onyx/galaxy/note/editor/data/ShortcutType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->b:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    return-object p0
.end method

.method public final getTitleRes()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->b:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->c:Ljava/lang/Integer;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final setTitleRes(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->c:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomShortcutBarBean(itemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shortcutType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->b:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", titleRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/CustomShortcutBarBean;->c:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
