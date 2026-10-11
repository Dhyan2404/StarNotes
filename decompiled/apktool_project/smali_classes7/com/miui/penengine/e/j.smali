.class public Lcom/miui/penengine/e/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/penengine/e/j$a;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "j"

.field public static final h:I = 0xc2

.field public static final i:I = 0xc3

.field public static final j:I = 0xc4

.field public static final k:I = 0xc5

.field public static final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Ljava/lang/String; = "stylus_pinch_status"

.field public static final n:Ljava/lang/String; = "stylus_hover_enable"

.field public static final o:Ljava/lang/String; = "stylus_double_click_status"

.field public static final p:Ljava/lang/String; = "stylus_brush_preview_enable"

.field public static final q:I = 0x1

.field public static final r:I = 0x1

.field public static final s:I = 0x0

.field public static final t:I = 0x1


# instance fields
.field public a:Landroid/content/ContentResolver;

.field public b:Lcom/miui/penengine/e/j$a;

.field public c:Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils$TouchFilmListener;

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xc5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/sunia/HTREnginev2/czo;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/miui/penengine/e/j;->l:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/penengine/e/j;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/penengine/e/j;->e:I

    return-void
.end method

.method public static synthetic a(Lcom/miui/penengine/e/j;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/penengine/e/j;->e:I

    return p0
.end method

.method public static synthetic a(Lcom/miui/penengine/e/j;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/miui/penengine/e/j;->e:I

    return p1
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lcom/miui/penengine/e/j;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/miui/penengine/e/j;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/miui/penengine/e/j;->d:I

    return p1
.end method

.method public static synthetic b(Lcom/miui/penengine/e/j;)Landroid/content/ContentResolver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/penengine/e/j;->a:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static synthetic c(Lcom/miui/penengine/e/j;)I
    .locals 0

    iget p0, p0, Lcom/miui/penengine/e/j;->d:I

    return p0
.end method

.method public static synthetic d(Lcom/miui/penengine/e/j;)Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils$TouchFilmListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/penengine/e/j;->c:Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils$TouchFilmListener;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils$TouchFilmListener;)V
    .locals 0

    if-nez p1, :cond_0

    .line 4
    sget-object p0, Lcom/miui/penengine/e/j;->g:Ljava/lang/String;

    const-string p1, "Context in null"

    invoke-static {p0, p1}, Lcom/miui/penengine/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p2, p0, Lcom/miui/penengine/e/j;->c:Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils$TouchFilmListener;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/penengine/e/j;->a:Landroid/content/ContentResolver;

    new-instance p2, Lcom/miui/penengine/e/j$a;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/miui/penengine/e/j$a;-><init>(Lcom/miui/penengine/e/j;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/miui/penengine/e/j;->b:Lcom/miui/penengine/e/j$a;

    invoke-virtual {p2}, Lcom/miui/penengine/e/j$a;->b()V

    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    sget-object v1, Lcom/miui/penengine/e/j;->l:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x4

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    iget-object p0, p0, Lcom/miui/penengine/e/j;->c:Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils$TouchFilmListener;

    if-eqz p0, :cond_6

    if-nez p1, :cond_6

    const/4 p1, 0x6

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/miui/penengine/e/j;->c:Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils$TouchFilmListener;

    if-eqz p0, :cond_6

    if-nez p1, :cond_6

    const/4 p1, 0x5

    :goto_0
    invoke-interface {p0, p1}, Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils$TouchFilmListener;->onTouchFilmTriggered(I)V

    goto :goto_4

    :pswitch_2
    iget v0, p0, Lcom/miui/penengine/e/j;->e:I

    if-nez v0, :cond_1

    sget-object p0, Lcom/miui/penengine/e/j;->g:Ljava/lang/String;

    const-string p1, "Stylus double tap is disabled"

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/miui/penengine/e/j;->c:Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils$TouchFilmListener;

    if-eqz p0, :cond_6

    if-nez p1, :cond_6

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    invoke-interface {p0, v2}, Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils$TouchFilmListener;->onTouchFilmTriggered(I)V

    goto :goto_4

    :pswitch_3
    iget v0, p0, Lcom/miui/penengine/e/j;->d:I

    if-nez v0, :cond_3

    sget-object p0, Lcom/miui/penengine/e/j;->g:Ljava/lang/String;

    const-string p1, "Stylus pinch is disabled"

    :goto_2
    invoke-static {p0, p1}, Lcom/miui/penengine/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    iget-object v4, p0, Lcom/miui/penengine/e/j;->c:Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils$TouchFilmListener;

    if-eqz v4, :cond_5

    if-nez p1, :cond_5

    iget-boolean v5, p0, Lcom/miui/penengine/e/j;->f:Z

    if-nez v5, :cond_5

    iput-boolean v3, p0, Lcom/miui/penengine/e/j;->f:Z

    if-le v0, v1, :cond_4

    goto :goto_3

    :cond_4
    move v2, v0

    :goto_3
    invoke-interface {v4, v2}, Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils$TouchFilmListener;->onTouchFilmTriggered(I)V

    goto :goto_4

    :cond_5
    if-ne p1, v3, :cond_6

    iput-boolean v2, p0, Lcom/miui/penengine/e/j;->f:Z

    :cond_6
    :goto_4
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0xc2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/miui/penengine/e/j;->b:Lcom/miui/penengine/e/j$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/penengine/e/j;->c:Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils$TouchFilmListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/penengine/e/j;->a:Landroid/content/ContentResolver;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/penengine/e/j$a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/penengine/e/j;->c:Lcom/miui/penengine/touchfilm/MiuiTouchFilmUtils$TouchFilmListener;

    iput-object v0, p0, Lcom/miui/penengine/e/j;->b:Lcom/miui/penengine/e/j$a;

    iput-object v0, p0, Lcom/miui/penengine/e/j;->a:Landroid/content/ContentResolver;

    :cond_0
    return-void
.end method
