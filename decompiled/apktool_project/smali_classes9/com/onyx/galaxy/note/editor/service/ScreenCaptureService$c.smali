.class public final Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService;->f(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Predicate;"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$c;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$c;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$c;->e:Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p1, "screenCapture file path is empty"

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/Object;)V

    :cond_0
    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$c;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
