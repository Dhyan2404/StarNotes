.class final Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils$getAudioTextInDir$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/io/File;",
        "Ljava/io/File;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "o1",
        "Ljava/io/File;",
        "o2",
        "invoke",
        "(Ljava/io/File;Ljava/io/File;)Ljava/lang/Integer;"
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils$getAudioTextInDir$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils$getAudioTextInDir$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils$getAudioTextInDir$1;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils$getAudioTextInDir$1;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils$getAudioTextInDir$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/io/File;Ljava/io/File;)Ljava/lang/Integer;
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "o1"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "o2"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils;->access$getSaveTimeInPath(Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils;Ljava/io/File;)J

    move-result-wide v0

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils;->access$getSaveTimeInPath(Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils;Ljava/io/File;)J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/NoteMediaUtils$getAudioTextInDir$1;->invoke(Ljava/io/File;Ljava/io/File;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
