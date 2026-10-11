.class public final synthetic Lcom/sunia/HTREnginev2/qal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/room/QueryInterceptorDatabase;

.field public final synthetic f:Landroidx/sqlite/db/SupportSQLiteQuery;

.field public final synthetic g:Landroidx/room/QueryInterceptorProgram;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/QueryInterceptorDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/room/QueryInterceptorProgram;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qal;->e:Landroidx/room/QueryInterceptorDatabase;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/qal;->f:Landroidx/sqlite/db/SupportSQLiteQuery;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/qal;->g:Landroidx/room/QueryInterceptorProgram;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qal;->e:Landroidx/room/QueryInterceptorDatabase;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/qal;->f:Landroidx/sqlite/db/SupportSQLiteQuery;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qal;->g:Landroidx/room/QueryInterceptorProgram;

    invoke-static {v0, v1, p0}, Landroidx/room/QueryInterceptorDatabase;->h0(Landroidx/room/QueryInterceptorDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Landroidx/room/QueryInterceptorProgram;)V

    return-void
.end method
