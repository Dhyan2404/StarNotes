.class public Lcom/fasterxml/uuid/impl/LoggerFacade;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/uuid/impl/LoggerFacade$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public b:Lcom/fasterxml/uuid/impl/LoggerFacade$a;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/uuid/impl/LoggerFacade;->a:Ljava/lang/Class;

    return-void
.end method

.method public static getLogger(Ljava/lang/Class;)Lcom/fasterxml/uuid/impl/LoggerFacade;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/uuid/impl/LoggerFacade;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/uuid/impl/LoggerFacade;

    invoke-direct {v0, p0}, Lcom/fasterxml/uuid/impl/LoggerFacade;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/uuid/impl/LoggerFacade;->b:Lcom/fasterxml/uuid/impl/LoggerFacade$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/uuid/impl/LoggerFacade;->a:Ljava/lang/Class;

    invoke-static {v0}, Lcom/fasterxml/uuid/impl/LoggerFacade$a;->a(Ljava/lang/Class;)Lcom/fasterxml/uuid/impl/LoggerFacade$a;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/uuid/impl/LoggerFacade;->b:Lcom/fasterxml/uuid/impl/LoggerFacade$a;

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/uuid/impl/LoggerFacade;->b:Lcom/fasterxml/uuid/impl/LoggerFacade$a;

    invoke-virtual {v0, p1}, Lcom/fasterxml/uuid/impl/LoggerFacade$a;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public warn(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/uuid/impl/LoggerFacade;->a(Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 2
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/uuid/impl/LoggerFacade;->a(Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/uuid/impl/LoggerFacade;->a(Ljava/lang/String;)V

    return-void
.end method
