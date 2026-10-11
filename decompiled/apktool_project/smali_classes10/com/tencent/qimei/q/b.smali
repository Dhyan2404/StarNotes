.class public Lcom/tencent/qimei/q/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "b"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IZLorg/json/JSONArray;Lcom/tencent/qimei/q/a;)V
    .locals 6

    move-object v0, p0

    invoke-static {}, Lcom/tencent/qimei/q/i;->b()Lcom/tencent/qimei/q/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qimei/q/i;->a()Lcom/tencent/qimei/q/c;

    move-result-object v2

    .line 6
    iget-object v3, v2, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v4, "appKey"

    invoke-interface {v3, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "source"

    .line 7
    iget-object v4, v2, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    move-object v5, p1

    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 9
    iget-object v4, v2, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v5, "firstTime"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "oaid"

    .line 10
    iget-object v4, v2, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    move-object v5, p4

    invoke-interface {v4, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "aid"

    .line 11
    iget-object v4, v2, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    move-object v5, p5

    invoke-interface {v4, v3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "q16"

    .line 12
    iget-object v4, v2, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    move-object v5, p6

    invoke-interface {v4, v3, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "q36"

    .line 13
    iget-object v4, v2, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    move-object v5, p7

    invoke-interface {v4, v3, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 15
    iget-object v4, v2, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v5, "updateTime"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sdkVersion"

    .line 16
    iget-object v4, v2, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    move-object/from16 v5, p10

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 18
    iget-object v4, v2, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v5, "interval"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 20
    iget-object v4, v2, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v5, "strict"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "platform"

    .line 21
    iget-object v4, v2, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    move-object/from16 v5, p11

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "data"

    .line 22
    iget-object v4, v2, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    move-object/from16 v5, p14

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 23
    iput-boolean v3, v2, Lcom/tencent/qimei/q/c;->b:Z

    move-object/from16 v3, p15

    .line 24
    iput-object v3, v2, Lcom/tencent/qimei/q/c;->c:Lcom/tencent/qimei/q/a;

    const-string v3, "s1"

    const-string v4, "/sp"

    .line 25
    invoke-virtual {v1, v2, v3, p0, v4}, Lcom/tencent/qimei/q/i;->b(Lcom/tencent/qimei/q/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/qimei/q/b;->a:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Spread data has been reported over,appKey = %s"

    invoke-static {v1, v2, v0}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/tencent/qimei/q/i;->b()Lcom/tencent/qimei/q/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qimei/q/i;->a()Lcom/tencent/qimei/q/c;

    move-result-object v1

    .line 1
    iget-object v2, v1, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    const-string v3, "version"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "browser"

    .line 2
    iget-object v2, v1, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "hid"

    .line 3
    iget-object p2, v1, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "userAgent"

    .line 4
    iget-object p2, v1, Lcom/tencent/qimei/q/c;->a:Ljava/util/Map;

    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "j1"

    const-string p2, "/bind"

    .line 5
    invoke-virtual {v0, v1, p1, p0, p2}, Lcom/tencent/qimei/q/i;->b(Lcom/tencent/qimei/q/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/tencent/qimei/q/b;->a:Ljava/lang/String;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "H5ID has been reported over,h5id = %s"

    invoke-static {p0, p2, p1}, Lcom/tencent/qimei/n/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
