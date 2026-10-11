.class public Lorg/apache/xerces/impl/XMLEntityManager$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final e:Lorg/apache/xerces/impl/XMLEntityManager$d;

.field public static final f:Lorg/apache/xerces/impl/XMLEntityManager$d;

.field public static final g:Lorg/apache/xerces/impl/XMLEntityManager$d;

.field public static final h:Lorg/apache/xerces/impl/XMLEntityManager$d;

.field public static final i:Lorg/apache/xerces/impl/XMLEntityManager$d;

.field public static final j:Lorg/apache/xerces/impl/XMLEntityManager$d;

.field public static final k:Lorg/apache/xerces/impl/XMLEntityManager$d;

.field public static final l:Lorg/apache/xerces/impl/XMLEntityManager$d;

.field public static final m:Lorg/apache/xerces/impl/XMLEntityManager$d;

.field public static final n:Lorg/apache/xerces/impl/XMLEntityManager$d;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Boolean;

.field public final d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/xerces/impl/XMLEntityManager$d;

    const-string v1, "UTF-8"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xerces/impl/XMLEntityManager$d;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lorg/apache/xerces/impl/XMLEntityManager$d;->e:Lorg/apache/xerces/impl/XMLEntityManager$d;

    new-instance v0, Lorg/apache/xerces/impl/XMLEntityManager$d;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/xerces/impl/XMLEntityManager$d;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lorg/apache/xerces/impl/XMLEntityManager$d;->f:Lorg/apache/xerces/impl/XMLEntityManager$d;

    new-instance v0, Lorg/apache/xerces/impl/XMLEntityManager$d;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "UTF-16BE"

    const-string v6, "UTF-16"

    invoke-direct {v0, v5, v6, v1, v3}, Lorg/apache/xerces/impl/XMLEntityManager$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lorg/apache/xerces/impl/XMLEntityManager$d;->g:Lorg/apache/xerces/impl/XMLEntityManager$d;

    new-instance v0, Lorg/apache/xerces/impl/XMLEntityManager$d;

    invoke-direct {v0, v5, v6, v1, v4}, Lorg/apache/xerces/impl/XMLEntityManager$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lorg/apache/xerces/impl/XMLEntityManager$d;->h:Lorg/apache/xerces/impl/XMLEntityManager$d;

    new-instance v0, Lorg/apache/xerces/impl/XMLEntityManager$d;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v7, "UTF-16LE"

    invoke-direct {v0, v7, v6, v5, v3}, Lorg/apache/xerces/impl/XMLEntityManager$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lorg/apache/xerces/impl/XMLEntityManager$d;->i:Lorg/apache/xerces/impl/XMLEntityManager$d;

    new-instance v0, Lorg/apache/xerces/impl/XMLEntityManager$d;

    invoke-direct {v0, v7, v6, v5, v4}, Lorg/apache/xerces/impl/XMLEntityManager$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lorg/apache/xerces/impl/XMLEntityManager$d;->j:Lorg/apache/xerces/impl/XMLEntityManager$d;

    new-instance v0, Lorg/apache/xerces/impl/XMLEntityManager$d;

    const-string v4, "ISO-10646-UCS-4"

    invoke-direct {v0, v4, v1, v3}, Lorg/apache/xerces/impl/XMLEntityManager$d;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lorg/apache/xerces/impl/XMLEntityManager$d;->k:Lorg/apache/xerces/impl/XMLEntityManager$d;

    new-instance v0, Lorg/apache/xerces/impl/XMLEntityManager$d;

    invoke-direct {v0, v4, v5, v3}, Lorg/apache/xerces/impl/XMLEntityManager$d;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lorg/apache/xerces/impl/XMLEntityManager$d;->l:Lorg/apache/xerces/impl/XMLEntityManager$d;

    new-instance v0, Lorg/apache/xerces/impl/XMLEntityManager$d;

    invoke-direct {v0, v4, v2, v3}, Lorg/apache/xerces/impl/XMLEntityManager$d;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lorg/apache/xerces/impl/XMLEntityManager$d;->m:Lorg/apache/xerces/impl/XMLEntityManager$d;

    new-instance v0, Lorg/apache/xerces/impl/XMLEntityManager$d;

    const-string v1, "CP037"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/xerces/impl/XMLEntityManager$d;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lorg/apache/xerces/impl/XMLEntityManager$d;->n:Lorg/apache/xerces/impl/XMLEntityManager$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1, p2, p3}, Lorg/apache/xerces/impl/XMLEntityManager$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$d;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/xerces/impl/XMLEntityManager$d;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xerces/impl/XMLEntityManager$d;->c:Ljava/lang/Boolean;

    iput-boolean p4, p0, Lorg/apache/xerces/impl/XMLEntityManager$d;->d:Z

    return-void
.end method
