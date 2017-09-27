#include <QFile>
#include <QBuffer>

int main()
{
    QBuffer buf;
    if(!buf.open(QIODevice::WriteOnly)) {
        return -1;
    }

    QDataStream out(&buf);
    out << 12 << 34 << "12" << "34";

    buf.close();

    return 0;
}
