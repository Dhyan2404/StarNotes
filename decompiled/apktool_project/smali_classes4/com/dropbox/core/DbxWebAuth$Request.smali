.class public final Lcom/dropbox/core/DbxWebAuth$Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/DbxWebAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    }
.end annotation


# static fields
.field public static final j:Ljava/nio/charset/Charset;

.field public static final k:I = 0x1f4


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/Boolean;

.field public final e:Ljava/lang/Boolean;

.field public final f:Lcom/dropbox/core/DbxSessionStore;

.field public final g:Lcom/dropbox/core/TokenAccessType;

.field public final h:Ljava/lang/String;

.field public final i:Lcom/dropbox/core/IncludeGrantedScopes;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/DbxWebAuth$Request;->j:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;Lcom/dropbox/core/TokenAccessType;Ljava/lang/String;Lcom/dropbox/core/IncludeGrantedScopes;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$Request;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/dropbox/core/DbxWebAuth$Request;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/dropbox/core/DbxWebAuth$Request;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/dropbox/core/DbxWebAuth$Request;->d:Ljava/lang/Boolean;

    .line 7
    iput-object p5, p0, Lcom/dropbox/core/DbxWebAuth$Request;->e:Ljava/lang/Boolean;

    .line 8
    iput-object p6, p0, Lcom/dropbox/core/DbxWebAuth$Request;->f:Lcom/dropbox/core/DbxSessionStore;

    .line 9
    iput-object p7, p0, Lcom/dropbox/core/DbxWebAuth$Request;->g:Lcom/dropbox/core/TokenAccessType;

    .line 10
    iput-object p8, p0, Lcom/dropbox/core/DbxWebAuth$Request;->h:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lcom/dropbox/core/DbxWebAuth$Request;->i:Lcom/dropbox/core/IncludeGrantedScopes;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;Lcom/dropbox/core/TokenAccessType;Ljava/lang/String;Lcom/dropbox/core/IncludeGrantedScopes;Lcom/dropbox/core/DbxWebAuth$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/dropbox/core/DbxWebAuth$Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;Lcom/dropbox/core/TokenAccessType;Ljava/lang/String;Lcom/dropbox/core/IncludeGrantedScopes;)V

    return-void
.end method

.method public static synthetic a(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Lcom/dropbox/core/DbxWebAuth$Request;->j:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public static synthetic d(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic e(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic f(Lcom/dropbox/core/DbxWebAuth$Request;)Lcom/dropbox/core/TokenAccessType;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->g:Lcom/dropbox/core/TokenAccessType;

    return-object p0
.end method

.method public static synthetic g(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h(Lcom/dropbox/core/DbxWebAuth$Request;)Lcom/dropbox/core/IncludeGrantedScopes;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->i:Lcom/dropbox/core/IncludeGrantedScopes;

    return-object p0
.end method

.method public static synthetic i(Lcom/dropbox/core/DbxWebAuth$Request;)Lcom/dropbox/core/DbxSessionStore;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->f:Lcom/dropbox/core/DbxSessionStore;

    return-object p0
.end method

.method public static synthetic j(Lcom/dropbox/core/DbxWebAuth$Request;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/DbxWebAuth$Request;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static newBuilder()Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 2

    new-instance v0, Lcom/dropbox/core/DbxWebAuth$Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;-><init>(Lcom/dropbox/core/DbxWebAuth$a;)V

    return-object v0
.end method


# virtual methods
.method public copy()Lcom/dropbox/core/DbxWebAuth$Request$Builder;
    .locals 12

    new-instance v11, Lcom/dropbox/core/DbxWebAuth$Request$Builder;

    iget-object v1, p0, Lcom/dropbox/core/DbxWebAuth$Request;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/DbxWebAuth$Request;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/DbxWebAuth$Request;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/DbxWebAuth$Request;->d:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/dropbox/core/DbxWebAuth$Request;->e:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/dropbox/core/DbxWebAuth$Request;->f:Lcom/dropbox/core/DbxSessionStore;

    iget-object v7, p0, Lcom/dropbox/core/DbxWebAuth$Request;->g:Lcom/dropbox/core/TokenAccessType;

    iget-object v8, p0, Lcom/dropbox/core/DbxWebAuth$Request;->h:Ljava/lang/String;

    iget-object v9, p0, Lcom/dropbox/core/DbxWebAuth$Request;->i:Lcom/dropbox/core/IncludeGrantedScopes;

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/dropbox/core/DbxWebAuth$Request$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/dropbox/core/DbxSessionStore;Lcom/dropbox/core/TokenAccessType;Ljava/lang/String;Lcom/dropbox/core/IncludeGrantedScopes;Lcom/dropbox/core/DbxWebAuth$a;)V

    return-object v11
.end method
