.class final Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$shapeToolTypeOption$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$shapeToolTypeOption$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$shapeToolTypeOption$2;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$shapeToolTypeOption$2;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$shapeToolTypeOption$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$shapeToolTypeOption$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance p0, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$shapeToolTypeOption$2$1;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$shapeToolTypeOption$2$1;-><init>()V

    sget-object v2, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$shapeToolTypeOption$2$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$shapeToolTypeOption$2$2;

    const-string v3, "ONYX_NOTE_EDIT_SELECT_SHAPE_TYPE"

    .line 5
    invoke-direct {p0, v0, v3, v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;Lkotlin/jvm/functions/Function0;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$shapeToolTypeOption$2;->invoke()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    return-object p0
.end method
