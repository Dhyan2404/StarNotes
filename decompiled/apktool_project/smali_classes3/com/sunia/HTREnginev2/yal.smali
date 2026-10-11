.class public final synthetic Lcom/sunia/HTREnginev2/yal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/room/QueryInterceptorDatabase;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yal;->e:Landroidx/room/QueryInterceptorDatabase;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/yal;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/yal;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yal;->e:Landroidx/room/QueryInterceptorDatabase;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/yal;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yal;->g:Ljava/util/List;

    invoke-static {v0, v1, p0}, Landroidx/room/QueryInterceptorDatabase;->I(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
