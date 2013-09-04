syscall::read:entry
/execname != "Terminal"/
{
    printf ("%s called read, asking for %d bytes", execname, arg2);
}