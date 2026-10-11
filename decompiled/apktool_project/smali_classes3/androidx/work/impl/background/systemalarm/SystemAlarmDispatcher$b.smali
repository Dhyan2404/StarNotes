.class public Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final e:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

.field public final f:Landroid/content/Intent;

.field public final g:I


# direct methods
.method public constructor <init>(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;Landroid/content/Intent;I)V
    .locals 0
    .param p1    # Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dispatcher",
            "intent",
            "startId"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$b;->e:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$b;->f:Landroid/content/Intent;

    iput p3, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$b;->g:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$b;->e:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$b;->f:Landroid/content/Intent;

    iget p0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$b;->g:I

    invoke-virtual {v0, v1, p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->add(Landroid/content/Intent;I)Z

    return-void
.end method
