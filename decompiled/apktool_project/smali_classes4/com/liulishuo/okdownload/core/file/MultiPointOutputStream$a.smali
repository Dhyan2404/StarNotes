.class public Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;-><init>(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/breakpoint/DownloadStore;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;


# direct methods
.method public constructor <init>(Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$a;->e:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$a;->e:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->q()V

    return-void
.end method
