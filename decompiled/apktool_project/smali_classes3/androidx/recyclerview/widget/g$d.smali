.class public Landroidx/recyclerview/widget/g$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static i:Landroidx/recyclerview/widget/g$d;

.field public static final j:Ljava/lang/Object;


# instance fields
.field public a:Landroidx/recyclerview/widget/g$d;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/g$d;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(III)Landroidx/recyclerview/widget/g$d;
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/g$d;->b(IIIIIILjava/lang/Object;)Landroidx/recyclerview/widget/g$d;

    move-result-object p0

    return-object p0
.end method

.method public static b(IIIIIILjava/lang/Object;)Landroidx/recyclerview/widget/g$d;
    .locals 3

    sget-object v0, Landroidx/recyclerview/widget/g$d;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/recyclerview/widget/g$d;->i:Landroidx/recyclerview/widget/g$d;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/recyclerview/widget/g$d;

    invoke-direct {v1}, Landroidx/recyclerview/widget/g$d;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v2, v1, Landroidx/recyclerview/widget/g$d;->a:Landroidx/recyclerview/widget/g$d;

    sput-object v2, Landroidx/recyclerview/widget/g$d;->i:Landroidx/recyclerview/widget/g$d;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/g$d;->a:Landroidx/recyclerview/widget/g$d;

    :goto_0
    iput p0, v1, Landroidx/recyclerview/widget/g$d;->b:I

    iput p1, v1, Landroidx/recyclerview/widget/g$d;->c:I

    iput p2, v1, Landroidx/recyclerview/widget/g$d;->d:I

    iput p3, v1, Landroidx/recyclerview/widget/g$d;->e:I

    iput p4, v1, Landroidx/recyclerview/widget/g$d;->f:I

    iput p5, v1, Landroidx/recyclerview/widget/g$d;->g:I

    iput-object p6, v1, Landroidx/recyclerview/widget/g$d;->h:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c(IILjava/lang/Object;)Landroidx/recyclerview/widget/g$d;
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/g$d;->b(IIIIIILjava/lang/Object;)Landroidx/recyclerview/widget/g$d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/g$d;->a:Landroidx/recyclerview/widget/g$d;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/recyclerview/widget/g$d;->g:I

    iput v1, p0, Landroidx/recyclerview/widget/g$d;->f:I

    iput v1, p0, Landroidx/recyclerview/widget/g$d;->e:I

    iput v1, p0, Landroidx/recyclerview/widget/g$d;->d:I

    iput v1, p0, Landroidx/recyclerview/widget/g$d;->c:I

    iput v1, p0, Landroidx/recyclerview/widget/g$d;->b:I

    iput-object v0, p0, Landroidx/recyclerview/widget/g$d;->h:Ljava/lang/Object;

    sget-object v0, Landroidx/recyclerview/widget/g$d;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/recyclerview/widget/g$d;->i:Landroidx/recyclerview/widget/g$d;

    if-eqz v1, :cond_0

    iput-object v1, p0, Landroidx/recyclerview/widget/g$d;->a:Landroidx/recyclerview/widget/g$d;

    :cond_0
    sput-object p0, Landroidx/recyclerview/widget/g$d;->i:Landroidx/recyclerview/widget/g$d;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
